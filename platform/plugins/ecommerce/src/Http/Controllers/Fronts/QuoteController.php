<?php

namespace Botble\Ecommerce\Http\Controllers\Fronts;

use Botble\Base\Facades\BaseHelper;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Ecommerce\Facades\EcommerceHelper;
use Botble\Ecommerce\Models\Product;
use Botble\Ecommerce\Models\QuoteRequest;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class QuoteController extends BaseController
{
    public function index(Request $request)
    {
        $productId = $request->input('product');
        $product = null;

        if ($productId) {
            $product = Product::query()
                ->wherePublished()
                ->where('id', $productId)
                ->where('is_variation', false)
                ->with(['slugable'])
                ->first();
        }

        if (! $product) {
            return redirect()->to(BaseHelper::getHomepageUrl())->with('error_msg', __('Product not found.'));
        }

        SeoHelper::setTitle(__('Request a Quote - :product', ['product' => $product->name]))
            ->setDescription(__('Request a quote for :product', ['product' => $product->name]));

        Theme::breadcrumb()
            ->add(__('Products'), route('public.products'))
            ->add($product->name, $product->url)
            ->add(__('Request a Quote'));

        do_action(BASE_ACTION_PUBLIC_RENDER_SINGLE, PRODUCT_MODULE_SCREEN_NAME, $product);

        return Theme::scope(
            'ecommerce.request-quote',
            compact('product'),
            'plugins/ecommerce::themes.request-quote'
        )->render();
    }

    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'product_id' => 'required|integer|exists:ec_products,id',
            'name' => 'required|string|max:191',
            'email' => 'required|email|max:191',
            'phone' => 'nullable|string|max:60',
            'company_name' => 'nullable|string|max:191',
            'quantity' => 'nullable|integer|min:1|max:999999',
            'message' => 'nullable|string|max:5000',
        ]);

        if ($validator->fails()) {
            return redirect()
                ->back()
                ->withErrors($validator)
                ->withInput();
        }

        $product = Product::find($request->input('product_id'));

        if (! $product) {
            return redirect()
                ->back()
                ->withInput()
                ->with('error_msg', __('Product not found.'));
        }

        try {
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

            if (is_plugin_active('email') && ($adminEmail = setting('admin_email'))) {
                try {
                    \Botble\Base\Facades\EmailHandler::setModule(ECOMMERCE_MODULE_SCREEN_NAME)
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
                            'status' => __('Pending'),
                        ])
                        ->sendUsingTemplate('quote_request_notification', $adminEmail);
                } catch (\Exception $e) {
                    \Illuminate\Support\Facades\Log::error('Quote email notification failed: ' . $e->getMessage());
                }
            }

            return redirect()->route('public.quote-requests.success', ['quote' => $quoteRequest->id])
                ->with('success_msg', __('Your quote request has been submitted successfully! We will get back to you shortly.'));
        } catch (\Exception $e) {
            \Illuminate\Support\Facades\Log::error('Quote request creation failed: ' . $e->getMessage());

            return redirect()
                ->back()
                ->withInput()
                ->with('error_msg', __('An error occurred while submitting your quote request. Please try again.'));
        }
    }

    public function success(Request $request)
    {
        $quoteId = $request->input('quote');
        $quoteRequest = QuoteRequest::with('product')->find($quoteId);

        if (! $quoteRequest) {
            return redirect()->to(BaseHelper::getHomepageUrl());
        }

        SeoHelper::setTitle(__('Quote Request Submitted'))
            ->setDescription(__('Your quote request has been received.'));

        Theme::breadcrumb()
            ->add(__('Request a Quote'), route('public.quote-requests.index', ['product' => $quoteRequest->product_id]))
            ->add(__('Submitted'));

        return Theme::scope(
            'ecommerce.request-quote-success',
            compact('quoteRequest'),
            'plugins/ecommerce::themes.request-quote-success'
        )->render();
    }
}
