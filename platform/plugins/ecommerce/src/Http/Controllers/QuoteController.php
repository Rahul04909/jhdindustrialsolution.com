<?php

namespace Botble\Ecommerce\Http\Controllers;

use Botble\Base\Facades\Assets;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Supports\Breadcrumb;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\QuoteRequest;
use Botble\Ecommerce\Tables\QuoteTable;
use Botble\Slug\Facades\SlugHelper;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class QuoteController extends BaseController
{
    protected function breadcrumb(): Breadcrumb
    {
        return parent::breadcrumb()
            ->add(trans('plugins/ecommerce::quote-requests.name'), route('quote-requests.index'));
    }

    public function index(QuoteTable $dataTable)
    {
        $this->pageTitle(trans('plugins/ecommerce::quote-requests.name'));

        return $dataTable->renderTable();
    }

    public function show(QuoteRequest $quoteRequest)
    {
        $this->pageTitle(trans('plugins/ecommerce::quote-requests.view', ['name' => $quoteRequest->name]));

        $quoteRequest->load(['product', 'customer']);

        Assets::addStylesDirectly('vendor/core/core/base/css/libraries/tom-select.css')
            ->addScriptsDirectly('vendor/core/core/base/js/libraries/tom-select.js');

        $product = $quoteRequest->product;
        $statuses = [
            'pending' => trans('plugins/ecommerce::quote-requests.status.pending'),
            'quoted' => trans('plugins/ecommerce::quote-requests.status.quoted'),
            'accepted' => trans('plugins/ecommerce::quote-requests.status.accepted'),
            'declined' => trans('plugins/ecommerce::quote-requests.status.declined'),
            'cancelled' => trans('plugins/ecommerce::quote-requests.status.cancelled'),
        ];

        return view('plugins/ecommerce::quote-requests.show', compact('quoteRequest', 'product', 'statuses'));
    }

    public function update(QuoteRequest $quoteRequest, Request $request)
    {
        $request->validate([
            'status' => ['required', Rule::in(['pending', 'quoted', 'accepted', 'declined', 'cancelled'])],
            'admin_note' => 'nullable|string|max:5000',
            'quoted_price' => 'nullable|numeric|min:0',
        ]);

        $data = [
            'status' => $request->input('status'),
            'admin_note' => $request->input('admin_note'),
        ];

        if ($request->filled('quoted_price')) {
            $data['quoted_price'] = $request->input('quoted_price');
            $data['quoted_at'] = Carbon::now();
        }

        $quoteRequest->update($data);

        return $this
            ->httpResponse()
            ->setMessage(trans('core/base::notices.update_success_message'))
            ->setNextRoute('quote-requests.show', $quoteRequest);
    }

    public function destroy(QuoteRequest $quoteRequest)
    {
        return DeleteResourceAction::make($quoteRequest);
    }
}
