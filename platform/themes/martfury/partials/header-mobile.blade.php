<header class="header header--mobile" data-sticky="{{ theme_option('sticky_header_mobile_enabled', 'yes') == 'yes' ? 'true' : 'false' }}">
    <div class="navigation--mobile">
        <div class="navigation__left">
            <a class="ps-logo" href="{{ BaseHelper::getHomepageUrl() }}">
                {!! Theme::getLogoImage(['style' => 'max-height: 36px; width: auto;']) !!}
            </a>
        </div>
        @if (is_plugin_active('ecommerce'))
            <div class="navigation__right">
                <div class="header__actions">
                    {!! apply_filters('before_theme_header_mobile_actions', null) !!}
                    <div class="ps-cart--mini">
                        <a class="header__extra btn-shopping-cart" href="{{ route('public.cart') }}">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" style="display:block;">
                                <path d="M20.5 7.2H16.2V6.9C16.3 4.5 14.4 2.5 12 2.5C9.6 2.6 7.8 4.5 7.8 6.9V7.2H3.5C2.9 7.2 2.5 7.6 2.5 8.2V16.4C2.5 19.2 4.7 21.4 7.5 21.4H16.5C19.3 21.4 21.5 19.2 21.5 16.4V8.2C21.5 7.7 21.1 7.2 20.5 7.2ZM9.3 6.9C9.3 5.4 10.5 4.1 12 4C13.5 4.1 14.7 5.4 14.7 6.9V7.2H9.3V6.9ZM20 16.5C20 18.4 18.4 20 16.5 20H7.5C5.6 20 4 18.4 4 16.5V8.7H7.8V10.7C7.6 10.9 7.5 11.2 7.5 11.4C7.5 12 8 12.4 8.5 12.4C9 12.4 9.5 11.9 9.5 11.4C9.5 11.1 9.4 10.9 9.2 10.7V8.7H14.6V10.6C14.4 10.8 14.3 11.1 14.3 11.4C14.3 12 14.7 12.5 15.3 12.5C15.9 12.5 16.4 12.1 16.4 11.5C16.4 11.2 16.3 11 16.1 10.8V8.8H20V16.5Z" fill="currentColor"/>
                            </svg>
                            <span><i>{{ Cart::instance('cart')->count() }}</i></span>
                        </a>
                        <div class="ps-cart--mobile">
                            {!! Theme::partial('cart') !!}
                        </div>
                    </div>
                    {!! apply_filters('after_theme_header_mobile_actions', null) !!}
                    <div class="ps-block--user-header">
                        <div class="ps-block__left"><a href="{{ route('customer.overview') }}">
                            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" style="display:block;">
                                <path d="M18.9 21.5c.4 0 .7-.3.7-.7s-.3-.7-.7-.7-.7.3-.7.7.3.7.7.7zm-3 0c.4 0 .7-.3.7-.7s-.3-.7-.7-.7-.7.3-.7.7.3.7.7.7zm-3 0c.4 0 .7-.3.7-.7s-.3-.7-.7-.7-.7.3-.7.7.3.7.7.7zM12 4c.7 0 1.3.2 1.8.7.5.5.7 1.2.7 1.9v.1c0 .7-.2 1.5-.7 2-1 1-2.6 1-3.6 0-.5-.5-.8-1.2-.8-1.9v-.1c-.1-1.4.9-2.6 2.3-2.7.1 0 .2 0 .3 0m0-1.5c-2.2 0-4 1.8-4 4v.2c-.1 2.2 1.6 4.1 3.8 4.2h.2c1.1 0 2.1-.4 2.9-1.2.8-.8 1.2-1.9 1.1-3v-.2c0-1.1-.4-2.2-1.2-3-.7-.7-1.8-1.1-2.8-1.1zM9.8 21.5H5.8c-.4 0-.8-.2-1.1-.5s-.4-.6-.3-1c.6-4.4 4.6-7.4 9-6.8 2.8.4 5.2 2.2 6.3 4.8.1.4-.1.8-.5 1-.4.1-.8 0-.9-.4-1.3-3.3-5.1-5-8.4-3.7-2.2.9-3.8 2.9-4.1 5.3h4c.4 0 .8.3.8.8s-.4.5-.8.5z" fill="currentColor"/>
                            </svg>
                        </a></div>
                    </div>
                </div>
            </div>
        @endif
    </div>
    @if (is_plugin_active('ecommerce'))
        <div class="ps-search--mobile">
            <form class="ps-form--search-mobile" action="{{ route('public.products') }}" data-ajax-url="{{ route('public.ajax.search-products') }}" method="get">
                <div class="form-group--nest position-relative">
                    <input class="form-control input-search-product" name="q" value="{{ BaseHelper::stringify(request()->query('q')) }}" type="text" autocomplete="off" placeholder="{{ __('Search something...') }}">
                    <div class="spinner-icon">
                        <i class="fa fa-spin fa-spinner"></i>
                    </div>
                    <button type="submit" title="{{ __('Search') }}"><i class="icon-magnifier"></i></button>
                    <div class="ps-panel--search-result"></div>
                </div>
            </form>
        </div>
    @endif
</header>