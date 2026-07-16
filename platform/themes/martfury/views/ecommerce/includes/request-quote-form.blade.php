<div class="ps-product__quote">
    <button type="button" class="ps-btn ps-btn--outline ps-btn--quote" data-bs-toggle="modal" data-bs-target="#request-quote-modal">
        <i class="icon-paperclip"></i> {{ __('Request a Quote') }}
    </button>
</div>

<div class="modal fade" id="request-quote-modal" tabindex="-1" aria-labelledby="request-quote-modal-label" aria-hidden="true">
    <div class="modal-dialog modal-dialog-centered">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="request-quote-modal-label">{{ __('Request a Quote') }}</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form class="request-quote-form" method="POST" action="{{ route('public.quote-requests.store') }}">
                @csrf
                <input type="hidden" name="product_id" value="{{ $product->id }}">
                <div class="modal-body">
                    @if (!auth('customer')->check())
                        <div class="mb-3">
                            <label class="form-label">{{ __('Full Name') }} <span class="text-danger">*</span></label>
                            <input type="text" name="name" class="form-control" value="{{ old('name') }}" placeholder="{{ __('Enter your full name') }}" required>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">{{ __('Email') }} <span class="text-danger">*</span></label>
                            <input type="email" name="email" class="form-control" value="{{ old('email') }}" placeholder="{{ __('Enter your email address') }}" required>
                        </div>
                    @else
                        <input type="hidden" name="name" value="{{ auth('customer')->user()->name }}">
                        <input type="hidden" name="email" value="{{ auth('customer')->user()->email }}">
                    @endif
                    <div class="mb-3">
                        <label class="form-label">{{ __('Phone Number') }}</label>
                        <input type="tel" name="phone" class="form-control" value="{{ old('phone', auth('customer')->user()->phone ?? '') }}" placeholder="{{ __('Enter your phone number') }}">
                    </div>
                    <div class="mb-3">
                        <label class="form-label">{{ __('Company Name') }}</label>
                        <input type="text" name="company_name" class="form-control" value="{{ old('company_name') }}" placeholder="{{ __('Enter your company name') }}">
                    </div>
                    <div class="row mb-3">
                        <div class="col-6">
                            <label class="form-label">{{ __('Product') }}</label>
                            <p class="form-control-plaintext fw-medium">{{ $product->name }}</p>
                        </div>
                        <div class="col-6">
                            <label class="form-label">{{ __('Quantity') }} <span class="text-danger">*</span></label>
                            <input type="number" name="quantity" class="form-control" value="{{ old('quantity', 1) }}" min="1" required>
                        </div>
                    </div>
                    <div class="mb-3">
                        <label class="form-label">{{ __('Additional Message') }}</label>
                        <textarea name="message" class="form-control" rows="4" placeholder="{{ __('Tell us about your requirements...') }}">{{ old('message') }}</textarea>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="ps-btn ps-btn--outline" data-bs-dismiss="modal">{{ __('Cancel') }}</button>
                    <button type="submit" class="ps-btn ps-btn--primary">{{ __('Submit Request') }}</button>
                </div>
            </form>
        </div>
    </div>
</div>

@push('footer')
    <script>
        $(document).ready(function () {
            $('.request-quote-form').on('submit', function (e) {
                e.preventDefault();
                var $form = $(this);
                var $btn = $form.find('button[type="submit"]');
                $btn.prop('disabled', true).text('{{ __('Submitting...') }}');

                $.ajax({
                    url: $form.attr('action'),
                    method: 'POST',
                    data: $form.serialize(),
                    success: function (response) {
                        if (response.error) {
                            if (response.data && response.data.errors) {
                                var errors = response.data.errors;
                                var errorMsg = '';
                                $.each(errors, function (key, val) {
                                    errorMsg += val[0] + '\n';
                                });
                                alert(errorMsg);
                            } else {
                                alert(response.message || '{{ __('An error occurred. Please try again.') }}');
                            }
                        } else {
                            $('#request-quote-modal').modal('hide');
                            alert(response.message || '{{ __('Your quote request has been submitted successfully!') }}');
                            $form[0].reset();
                        }
                        $btn.prop('disabled', false).text('{{ __('Submit Request') }}');
                    },
                    error: function () {
                        alert('{{ __('An error occurred. Please try again.') }}');
                        $btn.prop('disabled', false).text('{{ __('Submit Request') }}');
                    }
                });
            });
        });
    </script>
@endpush
