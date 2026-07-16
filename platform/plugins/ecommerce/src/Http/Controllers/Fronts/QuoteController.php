<?php

namespace Botble\Ecommerce\Http\Controllers\Fronts;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Base\Facades\EmailHandler;
use Botble\Ecommerce\Models\QuoteRequest;
use Botble\Ecommerce\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class QuoteController extends BaseController
{
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|integer|exists:ec_products,id',
            'name' => 'required|string|max:191',
            'email' => 'required|email|max:191',
            'phone' => 'nullable|string|max:60',
            'company_name' => 'nullable|string|max:191',
            'quantity' => 'nullable|integer|min:1',
            'message' => 'nullable|string|max:5000',
        ]);

        if ($validator->fails()) {
            return $this
                ->httpResponse()
                ->setError()
                ->setMessage(__('Please fill in all required fields correctly.'))
                ->withInput()
                ->setData(['errors' => $validator->errors()->toArray()]);
        }

        $product = Product::find($request->input('product_id'));

        if (! $product) {
            return $this
                ->httpResponse()
                ->setError()
                ->setMessage(__('Product not found.'));
        }

        $quoteRequest = QuoteRequest::query()->create([
            'product_id' => $product->id,
            'customer_id' => auth('customer')->id(),
            'name' => $request->input('name'),
            'email' => $request->input('email'),
            'phone' => $request->input('phone'),
            'company_name' => $request->input('company_name'),
            'quantity' => $request->input('quantity', 1),
            'message' => $request->input('message'),
            'status' => 'pending',
        ]);

        EmailHandler::setModule(ECOMMERCE_MODULE_SCREEN_NAME)
            ->setVariableValues([
                'quote_request_id' => $quoteRequest->id,
                'customer_name' => $quoteRequest->name,
                'customer_email' => $quoteRequest->email,
                'customer_phone' => $quoteRequest->phone ?? 'N/A',
                'company_name' => $quoteRequest->company_name ?? 'N/A',
                'product_name' => $product->name,
                'product_sku' => $product->sku ?? 'N/A',
                'product_url' => $product->url,
                'quantity' => $quoteRequest->quantity,
                'message' => $quoteRequest->message ?? 'N/A',
                'status' => 'pending',
            ])
            ->sendUsingTemplate('quote_request_notification', setting('admin_email'));

        return $this
            ->httpResponse()
            ->setMessage(__('Your quote request has been submitted successfully! We will get back to you shortly.'));
    }
}
