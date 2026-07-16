@php
    Theme::set('pageId', 'request-quote-page');
    Theme::set('showBottomBarMenu', false);
@endphp

<div class="ps-page--request-quote">
    <div class="ps-container">
        <div class="ps-section--default mt-40 mb-40">
            <div class="ps-section__header">
                <h3>{{ __('Request a Quote') }}</h3>
                <p class="text-muted">{{ __('Fill out the form below and we will get back to you with a personalized quote.') }}</p>
            </div>
            <div class="ps-section__content">
                <div class="row">
                    <div class="col-md-8 col-lg-6">
                        @if ($errors->any())
                            <div class="alert alert-danger">
                                <ul class="mb-0 ps-list--dot">
                                    @foreach ($errors->all() as $error)
                                        <li>{{ $error }}</li>
                                    @endforeach
                                </ul>
                            </div>
                        @endif

                        @if (session('error_msg'))
                            <div class="alert alert-danger">{{ session('error_msg') }}</div>
                        @endif

                        <form method="POST" action="{{ route('public.quote-requests.store') }}" class="request-quote-form">
                            @csrf
                            <input type="hidden" name="product_id" value="{{ $product->id }}">

                            <div class="ps-product__selected mb-4 p-3 border rounded bg-light">
                                <div class="d-flex align-items-center gap-3">
                                    <img src="{{ RvMedia::getImageUrl($product->image, 'small', false, RvMedia::getDefaultImage()) }}"
                                         alt="{{ $product->name }}"
                                         class="rounded"
                                         style="width: 80px; height: 80px; object-fit: cover;">
                                    <div>
                                        <h5 class="mb-1">
                                            <a href="{{ $product->url }}" target="_blank">{{ $product->name }}</a>
                                        </h5>
                                        @if ($product->sku)
                                            <p class="text-muted mb-1"><small>{{ __('SKU') }}: {{ $product->sku }}</small></p>
                                        @endif
                                        @if ($product->price)
                                            <p class="fw-bold mb-0 text-primary">{{ format_price($product->price) }}</p>
                                        @endif
                                    </div>
                                </div>
                            </div>

                            @if (!auth('customer')->check())
                                <div class="row mb-3">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="name" class="form-label required">{{ __('Full Name') }}</label>
                                            <input type="text" id="name" name="name" class="form-control @error('name') is-invalid @enderror"
                                                   value="{{ old('name') }}" placeholder="{{ __('Enter your full name') }}" required>
                                            @error('name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <label for="email" class="form-label required">{{ __('Email Address') }}</label>
                                            <input type="email" id="email" name="email" class="form-control @error('email') is-invalid @enderror"
                                                   value="{{ old('email') }}" placeholder="{{ __('Enter your email address') }}" required>
                                            @error('email') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                        </div>
                                    </div>
                                </div>
                            @else
                                <input type="hidden" name="name" value="{{ auth('customer')->user()->name }}">
                                <input type="hidden" name="email" value="{{ auth('customer')->user()->email }}">
                            @endif

                            <div class="row mb-3">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="phone" class="form-label">{{ __('Phone Number') }}</label>
                                        <input type="tel" id="phone" name="phone" class="form-control @error('phone') is-invalid @enderror"
                                               value="{{ old('phone', auth('customer')->user()->phone ?? '') }}" placeholder="{{ __('Enter your phone number') }}">
                                        @error('phone') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="company_name" class="form-label">{{ __('Company Name') }}</label>
                                        <input type="text" id="company_name" name="company_name" class="form-control @error('company_name') is-invalid @enderror"
                                               value="{{ old('company_name') }}" placeholder="{{ __('Enter your company name (optional)') }}">
                                        @error('company_name') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <div class="col-md-4">
                                    <div class="form-group">
                                        <label for="quantity" class="form-label required">{{ __('Quantity') }}</label>
                                        <input type="number" id="quantity" name="quantity" class="form-control @error('quantity') is-invalid @enderror"
                                               value="{{ old('quantity', 1) }}" min="1" required>
                                        @error('quantity') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                    </div>
                                </div>
                            </div>

                            <div class="mb-4">
                                <div class="form-group">
                                    <label for="message" class="form-label">{{ __('Additional Message') }}</label>
                                    <textarea id="message" name="message" class="form-control @error('message') is-invalid @enderror"
                                              rows="5" placeholder="{{ __('Tell us about your requirements, specifications, or any special requests...') }}">{{ old('message') }}</textarea>
                                    @error('message') <div class="invalid-feedback">{{ $message }}</div> @enderror
                                </div>
                            </div>

                            <div class="d-flex gap-3">
                                <button type="submit" class="ps-btn ps-btn--primary btn-lg">
                                    <i class="icon-paper-plane"></i> {{ __('Submit Quote Request') }}
                                </button>
                                <a href="{{ $product->url }}" class="ps-btn ps-btn--outline btn-lg">
                                    {{ __('Cancel') }}
                                </a>
                            </div>
                        </form>
                    </div>

                    <div class="col-md-4 col-lg-4 offset-lg-1 mt-4 mt-md-0">
                        <div class="ps-card p-4 border rounded bg-light">
                            <h5 class="mb-3">{{ __('Why Request a Quote?') }}</h5>
                            <ul class="ps-list--dot">
                                <li class="mb-2">{{ __('Get personalized pricing based on your quantity') }}</li>
                                <li class="mb-2">{{ __('Receive bulk order discounts') }}</li>
                                <li class="mb-2">{{ __('Custom specifications and requirements') }}</li>
                                <li class="mb-2">{{ __('Dedicated support from our sales team') }}</li>
                                <li class="mb-2">{{ __('No obligation to purchase') }}</li>
                            </ul>
                            <hr class="my-3">
                            <p class="text-muted small mb-0">
                                <i class="icon-lock"></i> {{ __('Your information is secure and will not be shared.') }}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
