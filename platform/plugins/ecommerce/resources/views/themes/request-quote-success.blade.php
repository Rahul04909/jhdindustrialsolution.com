@php
    Theme::set('pageId', 'request-quote-success-page');
    Theme::set('showBottomBarMenu', false);
@endphp

<div class="ps-page--request-quote-success">
    <div class="ps-container">
        <div class="ps-section--default mt-40 mb-40">
            <div class="ps-section__content">
                <div class="row justify-content-center">
                    <div class="col-md-8 col-lg-6 text-center">
                        <div class="ps-checkout-success p-5">
                            <div class="ps-checkout-success__icon mb-4">
                                <i class="icon-check-circle" style="font-size: 64px; color: #28a745;"></i>
                            </div>
                            <h3 class="mb-3">{{ __('Quote Request Submitted Successfully!') }}</h3>
                            <p class="text-muted mb-4">
                                {{ __('Thank you for your interest. Our sales team will review your request and get back to you within 24-48 hours with a personalized quote.') }}
                            </p>

                            <div class="ps-card p-4 border rounded bg-light text-start mb-4">
                                <h5 class="mb-3">{{ __('Request Summary') }}</h5>
                                <table class="table table-borderless mb-0">
                                    <tr>
                                        <td class="ps-0 text-muted" style="width: 40%;">{{ __('Request ID') }}</td>
                                        <td class="pe-0 fw-medium">#{{ $quoteRequest->id }}</td>
                                    </tr>
                                    <tr>
                                        <td class="ps-0 text-muted">{{ __('Product') }}</td>
                                        <td class="pe-0 fw-medium">
                                            @if ($quoteRequest->product)
                                                <a href="{{ $quoteRequest->product->url }}" target="_blank">{{ $quoteRequest->product->name }}</a>
                                            @else
                                                {{ __('N/A') }}
                                            @endif
                                        </td>
                                    </tr>
                                    <tr>
                                        <td class="ps-0 text-muted">{{ __('Quantity') }}</td>
                                        <td class="pe-0 fw-medium">{{ $quoteRequest->quantity }}</td>
                                    </tr>
                                    <tr>
                                        <td class="ps-0 text-muted">{{ __('Name') }}</td>
                                        <td class="pe-0 fw-medium">{{ $quoteRequest->name }}</td>
                                    </tr>
                                    <tr>
                                        <td class="ps-0 text-muted">{{ __('Email') }}</td>
                                        <td class="pe-0 fw-medium">{{ $quoteRequest->email }}</td>
                                    </tr>
                                    <tr>
                                        <td class="ps-0 text-muted">{{ __('Status') }}</td>
                                        <td class="pe-0 fw-medium"><span class="badge bg-warning text-dark">{{ __('Pending') }}</span></td>
                                    </tr>
                                </table>
                            </div>

                            <div class="d-flex gap-3 justify-content-center">
                                <a href="{{ route('public.products') }}" class="ps-btn ps-btn--outline">
                                    <i class="icon-arrow-left"></i> {{ __('Continue Shopping') }}
                                </a>
                                <a href="{{ $quoteRequest->product?->url ?? route('public.products') }}" class="ps-btn ps-btn--primary">
                                    {{ __('Back to Product') }}
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
