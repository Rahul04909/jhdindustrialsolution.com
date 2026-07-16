@extends(BaseHelper::getAdminMasterLayoutTemplate())

@section('content')
    <div class="row">
        <div class="col-md-8 mb-3 mb-md-0">
            <x-core::card>
                <x-core::card.header>
                    <div class="d-flex justify-content-between align-items-center w-100">
                        <h4 class="card-title">
                            {{ trans('plugins/ecommerce::quote-requests.quote_request_info') }}
                        </h4>
                        {!! BaseHelper::clean($quoteRequest->status->toHtml()) !!}
                    </div>
                </x-core::card.header>
                <x-core::card.body>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.customer_name') }}:</strong>
                            <p class="mb-0">{{ $quoteRequest->name }}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.email') }}:</strong>
                            <p class="mb-0">
                                <a href="mailto:{{ $quoteRequest->email }}">{{ $quoteRequest->email }}</a>
                            </p>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.phone') }}:</strong>
                            <p class="mb-0">{{ $quoteRequest->phone ?: 'N/A' }}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.company') }}:</strong>
                            <p class="mb-0">{{ $quoteRequest->company_name ?: 'N/A' }}</p>
                        </div>
                    </div>
                    <div class="row mb-3">
                        <div class="col-md-6">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.quantity') }}:</strong>
                            <p class="mb-0">{{ $quoteRequest->quantity }}</p>
                        </div>
                        <div class="col-md-6">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.requested_at') }}:</strong>
                            <p class="mb-0">{{ $quoteRequest->created_at->format('Y-m-d H:i:s') }}</p>
                        </div>
                    </div>
                    @if ($product)
                        <div class="row mb-3">
                            <div class="col-12">
                                <strong>{{ trans('plugins/ecommerce::quote-requests.product') }}:</strong>
                                <p class="mb-0">
                                    <a href="{{ $product->url }}" target="_blank">
                                        {{ $product->name }}
                                    </a>
                                    @if ($product->sku)
                                        <span class="text-muted">(SKU: {{ $product->sku }})</span>
                                    @endif
                                </p>
                            </div>
                        </div>
                    @endif
                    @if ($quoteRequest->message)
                        <div class="row mb-3">
                            <div class="col-12">
                                <strong>{{ trans('plugins/ecommerce::quote-requests.message') }}:</strong>
                                <p class="mb-0 p-3 bg-body-tertiary rounded">{{ $quoteRequest->message }}</p>
                            </div>
                        </div>
                    @endif
                </x-core::card.body>
            </x-core::card>

            <x-core::card class="mt-3">
                <x-core::card.header>
                    <h4 class="card-title">
                        {{ trans('plugins/ecommerce::quote-requests.admin_actions') }}
                    </h4>
                </x-core::card.header>
                <x-core::card.body>
                    <x-core::form
                        :url="route('quote-requests.update', $quoteRequest)"
                        method="PUT"
                    >
                        <div class="row mb-3">
                            <div class="col-md-6">
                                <label class="form-label">{{ trans('plugins/ecommerce::quote-requests.status') }}</label>
                                <select name="status" class="form-select">
                                    @foreach ($statuses as $value => $label)
                                        <option value="{{ $value }}" @selected($quoteRequest->status->getValue() === $value)>
                                            {{ $label }}
                                        </option>
                                    @endforeach
                                </select>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label">{{ trans('plugins/ecommerce::quote-requests.quoted_price') }}</label>
                                <div class="input-group">
                                    <span class="input-group-text">$</span>
                                    <input
                                        type="number"
                                        step="0.01"
                                        min="0"
                                        name="quoted_price"
                                        class="form-control"
                                        value="{{ old('quoted_price', $quoteRequest->quoted_price) }}"
                                        placeholder="0.00"
                                    >
                                </div>
                            </div>
                        </div>
                        <div class="mb-3">
                            <label class="form-label">{{ trans('plugins/ecommerce::quote-requests.admin_note') }}</label>
                            <textarea
                                name="admin_note"
                                class="form-control"
                                rows="4"
                                placeholder="{{ trans('plugins/ecommerce::quote-requests.admin_note_placeholder') }}"
                            >{{ old('admin_note', $quoteRequest->admin_note) }}</textarea>
                        </div>
                        <div class="text-end">
                            <x-core::button
                                type="submit"
                                color="primary"
                                icon="ti ti-device-floppy"
                            >
                                {{ trans('core/base::forms.update') }}
                            </x-core::button>
                        </div>
                    </x-core::form>
                </x-core::card.body>
            </x-core::card>
        </div>

        <div class="col-md-4">
            @if ($product)
                <x-core::card>
                    <x-core::card.header>
                        <h4 class="card-title">
                            {{ trans('plugins/ecommerce::quote-requests.product') }}
                        </h4>
                    </x-core::card.header>
                    <x-core::card.body>
                        <div class="d-flex gap-3 align-items-start">
                            <img
                                class="img-thumbnail"
                                src="{{ RvMedia::getImageUrl($product->image, 'thumb', false, RvMedia::getDefaultImage()) }}"
                                alt="{{ $product->name }}"
                                style="width: 40%"
                            >
                            <div>
                                <h5>
                                    <a href="{{ $product->url }}" target="_blank">
                                        {{ $product->name }}
                                    </a>
                                </h5>
                                @if ($product->sku)
                                    <p class="text-muted mb-0">{{ trans('plugins/ecommerce::products.sku') }}: {{ $product->sku }}</p>
                                @endif
                                @if ($product->price)
                                    <p class="fw-bold mt-2">
                                        {{ format_price($product->price) }}
                                        @if ($product->sale_price)
                                            <del class="text-muted ms-1 small">{{ format_price($product->sale_price) }}</del>
                                        @endif
                                    </p>
                                @endif
                            </div>
                        </div>
                    </x-core::card.body>
                </x-core::card>
            @endif

            <x-core::card class="mt-3">
                <x-core::card.header>
                    <h4 class="card-title">
                        {{ trans('plugins/ecommerce::quote-requests.quote_summary') }}
                    </h4>
                </x-core::card.header>
                <x-core::card.body>
                    <div class="mb-2">
                        <strong>{{ trans('plugins/ecommerce::quote-requests.status') }}:</strong><br>
                        {!! BaseHelper::clean($quoteRequest->status->toHtml()) !!}
                    </div>
                    @if ($quoteRequest->quoted_price)
                        <div class="mb-2">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.quoted_price') }}:</strong><br>
                            <span class="fs-4 fw-bold text-primary">{{ format_price($quoteRequest->quoted_price) }}</span>
                        </div>
                    @endif
                    @if ($quoteRequest->quoted_at)
                        <div class="mb-2">
                            <strong>{{ trans('plugins/ecommerce::quote-requests.quoted_at') }}:</strong><br>
                            <span>{{ $quoteRequest->quoted_at->format('Y-m-d H:i:s') }}</span>
                        </div>
                    @endif
                </x-core::card.body>
            </x-core::card>

            <x-core::card class="mt-3">
                <x-core::card.header>
                    <h4 class="card-title">
                        {{ trans('plugins/ecommerce::quote-requests.danger_zone') }}
                    </h4>
                </x-core::card.header>
                <x-core::card.body>
                    <x-core::button
                        color="danger"
                        :outlined="true"
                        data-bb-toggle="quote-delete"
                        data-target="{{ route('quote-requests.destroy', $quoteRequest) }}"
                        data-next-url="{{ route('quote-requests.index') }}"
                        icon="ti ti-trash"
                    >
                        {{ trans('plugins/ecommerce::quote-requests.delete_this_request') }}
                    </x-core::button>
                </x-core::card.body>
            </x-core::card>
        </div>
    </div>
@endsection

@push('footer')
    <x-core::modal.action
        type="danger"
        id="delete-quote-modal"
        :title="trans('plugins/ecommerce::quote-requests.delete_modal.title')"
        :description="trans('plugins/ecommerce::quote-requests.delete_modal.description')"
        :submit-button-label="trans('core/base::forms.delete')"
        :submit-button-attrs="['id' => 'confirm-delete-quote-button']"
    />
@endpush
