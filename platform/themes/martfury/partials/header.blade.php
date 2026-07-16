{!! Theme::partial('header-meta') !!}
    <body {!! Theme::bodyAttributes() !!} @if (Theme::get('pageId')) id="{{ Theme::get('pageId') }}" @endif>
        {!! apply_filters(THEME_FRONT_BODY, null) !!}
        <div id="alert-container"></div>

        @if (theme_option('preloader_enabled', 'no') == 'yes')
            <div id="loader-wrapper">
                <div class="preloader-loading"></div>
                <div class="loader-section section-left"></div>
                <div class="loader-section section-right"></div>
            </div>
        @endif

        {!! Theme::get('topHeader') !!}

        {{-- Top Strip Bar (Nykaa-style) --}}
        <div class="header-top-strip">
            <div class="strip-inner">
                <div class="strip-left">
                    <span>{{ __('Free Shipping on orders over ₹299 | Easy Returns') }}</span>
                </div>
                <div class="strip-right">
                    <a href="#">{{ __('Get App') }}</a>
                    @if (EcommerceHelper::isOrderTrackingEnabled())
                        <a href="{{ route('public.orders.tracking') }}">{{ __('Track Order') }}</a>
                    @endif
                    <a href="#">{{ __('Help') }}</a>
                </div>
            </div>
        </div>

        {{-- Main Header (Nykaa-style) --}}
        <header class="header-nykaa" data-sticky="{{ Theme::get('stickyHeader', theme_option('sticky_header_enabled', 'yes') == 'yes' ? 'true' : 'false') }}">
            <div class="header-nykaa-inner">
                {{-- Logo --}}
                <div class="nykaa-logo">
                    <a href="{{ BaseHelper::getHomepageUrl() }}">
                        {!! Theme::getLogoImage(['style' => 'max-height: 42px; width: auto;']) !!}
                    </a>
                </div>

                {{-- Navigation Links --}}
                <div class="nykaa-nav">
                    @if (is_plugin_active('ecommerce'))
                        <div class="nykaa-nav-item nav-categories">
                            <a href="#">{{ __('Categories') }}</a>
                            <div class="nykaa-mega-menu">
                                <ul class="menu--dropdown" style="list-style:none;margin:0;padding:0;">
                                    @php
                                        $categoriesDropdown = Theme::partial('product-categories-dropdown', ['categories' => ProductCategoryHelper::getProductCategoriesWithUrl()]);
                                    @endphp
                                    {!! $categoriesDropdown ?? null !!}
                                </ul>
                            </div>
                        </div>
                    @endif
                    {!! Menu::renderMenuLocation('main-menu', [
                        'view'    => 'menu',
                        'options' => ['class' => 'nykaa-nav-inline'],
                    ]) !!}
                </div>

                {{-- Search Bar --}}
                @if (is_plugin_active('ecommerce'))
                    <div class="nykaa-search">
                        <form class="search-wrapper" action="{{ route('public.products') }}" data-ajax-url="{{ route('public.ajax.search-products') }}" method="get">
                            <div class="search-category-select">
                                <select class="product-category-select" name="categories[]" aria-label="{{ __('Product categories') }}">
                                    <option value="0">{{ __('All') }}</option>
                                    {!! ProductCategoryHelper::renderProductCategoriesSelect() !!}
                                </select>
                            </div>
                            <input name="q" type="text" placeholder="{{ __('Search on JHD') }}" autocomplete="off">
                            <div class="spinner-icon">
                                <i class="fa fa-spin fa-spinner"></i>
                            </div>
                            <button type="submit" class="search-btn" title="{{ __('Search') }}">
                                <svg width="20" height="20" viewBox="0 0 24 24" fill="none">
                                    <path d="M21.54 19.97L16.3 14.73C17.36 13.44 17.99 11.79 17.99 9.99C17.99 5.85 14.64 2.5 10.5 2.5C6.35 2.5 3 5.85 3 9.99C3 14.13 6.35 17.48 10.49 17.48C12.29 17.48 13.94 16.84 15.23 15.79L20.47 21.03C20.62 21.18 20.81 21.25 21 21.25C21.19 21.25 21.38 21.18 21.53 21.03C21.83 20.74 21.83 20.26 21.54 19.97ZM10.49 15.98C7.19 15.98 4.5 13.29 4.5 9.99C4.5 6.69 7.19 4 10.49 4C13.79 4 16.48 6.69 16.48 9.99C16.48 13.3 13.8 15.98 10.49 15.98Z" fill="currentColor"/>
                                </svg>
                            </button>
                            <div class="ps-panel--search-result"></div>
                        </form>
                    </div>
                @endif

                {{-- Right Actions --}}
                <div class="nykaa-actions">
                    {!! apply_filters('before_theme_header_actions', null) !!}

                    @if (is_plugin_active('ecommerce'))
                        @if (EcommerceHelper::isCompareEnabled())
                            <a class="action-btn" href="{{ route('public.compare') }}" title="{{ __('Compare') }}">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none">
                                    <path d="M12 4C12.7 4 13.3 4.2 13.8 4.7C14.3 5.2 14.5 5.9 14.5 6.6V6.7C14.5 7.4 14.3 8.2 13.8 8.7C12.8 9.7 11.2 9.7 10.2 8.7C9.7 8.2 9.4 7.5 9.4 6.8V6.7C9.3 5.3 10.3 4.1 11.7 4C11.8 4 11.9 4 12 4ZM12 2.5C9.8 2.5 8 4.3 8 6.5C8 6.6 8 6.6 8 6.7V6.8C7.9 9 9.6 10.9 11.8 11C11.9 11 11.9 11 12 11C13.1 11 14.1 10.6 14.9 9.8C15.7 9 16.1 7.9 16 6.8V6.6C16 5.5 15.6 4.4 14.8 3.6C14.1 2.9 13 2.5 12 2.5Z" fill="currentColor"/>
                                    <path d="M9.8 21.5H5.8C5.4 21.5 5 21.3 4.7 21C4.4 20.7 4.3 20.2 4.4 19.8C5 15.4 9 12.4 13.4 13C16.2 13.4 18.6 15.2 19.7 17.8C19.8 18.2 19.6 18.6 19.2 18.8C18.8 18.9 18.4 18.8 18.3 18.4C17 15.1 13.2 13.4 9.9 14.7C7.7 15.6 6.1 17.6 5.8 20H9.8C10.2 20 10.6 20.3 10.6 20.8C10.6 21.3 10.2 21.5 9.8 21.5Z" fill="currentColor"/>
                                </svg>
                                <span class="action-label">{{ __('Compare') }}</span>
                                <span class="badge-count">{{ Cart::instance('compare')->count() }}</span>
                            </a>
                        @endif

                        @if (EcommerceHelper::isWishlistEnabled())
                            <a class="action-btn" href="{{ route('public.wishlist') }}" title="{{ __('Wishlist') }}">
                                <svg width="22" height="22" viewBox="0 0 24 24" fill="none">
                                    <path d="M12 21.5L10.6 20.2C5.9 15.9 2.8 13.1 2.8 9.7C2.8 7 4.9 4.9 7.6 4.9C9.2 4.9 10.8 5.7 12 6.9C13.2 5.7 14.8 4.9 16.4 4.9C19.1 4.9 21.2 7 21.2 9.7C21.2 13.1 18.1 15.9 13.4 20.2L12 21.5Z" fill="currentColor"/>
                                </svg>
                                <span class="action-label">{{ __('Wishlist') }}</span>
                                <span class="badge-count">{{ !auth('customer')->check() ? Cart::instance('wishlist')->count() : auth('customer')->user()->wishlist()->count() }}</span>
                            </a>
                        @endif

                        @if (EcommerceHelper::isCartEnabled())
                            <div class="ps-cart--mini">
                                <a class="action-btn btn-shopping-cart" href="{{ route('public.cart') }}" title="{{ __('Cart') }}">
                                    <svg width="22" height="22" viewBox="0 0 24 24" fill="none">
                                        <path d="M20.5 7.2H16.2V6.9C16.3 4.5 14.4 2.5 12 2.5C9.6 2.6 7.8 4.5 7.8 6.9V7.2H3.5C2.9 7.2 2.5 7.6 2.5 8.2V16.4C2.5 19.2 4.7 21.4 7.5 21.4H16.5C19.3 21.4 21.5 19.2 21.5 16.4V8.2C21.5 7.7 21.1 7.2 20.5 7.2ZM9.3 6.9C9.3 5.4 10.5 4.1 12 4C13.5 4.1 14.7 5.4 14.7 6.9V7.2H9.3V6.9ZM20 16.5C20 18.4 18.4 20 16.5 20H7.5C5.6 20 4 18.4 4 16.5V8.7H7.8V10.7C7.6 10.9 7.5 11.2 7.5 11.4C7.5 12 8 12.4 8.5 12.4C9 12.4 9.5 11.9 9.5 11.4C9.5 11.1 9.4 10.9 9.2 10.7V8.7H14.6V10.6C14.4 10.8 14.3 11.1 14.3 11.4C14.3 12 14.7 12.5 15.3 12.5C15.9 12.5 16.4 12.1 16.4 11.5C16.4 11.2 16.3 11 16.1 10.8V8.8H20V16.5Z" fill="currentColor"/>
                                    </svg>
                                    <span class="action-label">{{ __('Cart') }}</span>
                                    <span class="badge-count cart-count-badge">{{ Cart::instance('cart')->count() }}</span>
                                </a>
                                <div class="ps-cart--mobile">
                                    {!! Theme::partial('cart') !!}
                                </div>
                            </div>
                        @endif
                    @endif

                    {{-- Account --}}
                    <div class="account-dropdown">
                        <div class="action-btn" role="button" tabindex="0">
                            <svg width="22" height="22" viewBox="0 0 24 24" fill="none">
                                <path d="M18.9 21.5001C19.2866 21.5001 19.6 21.1867 19.6 20.8001C19.6 20.4135 19.2866 20.1001 18.9 20.1001C18.5134 20.1001 18.2 20.4135 18.2 20.8001C18.2 21.1867 18.5134 21.5001 18.9 21.5001Z" fill="currentColor"/>
                                <path d="M15.9 21.5001C16.2866 21.5001 16.6 21.1867 16.6 20.8001C16.6 20.4135 16.2866 20.1001 15.9 20.1001C15.5134 20.1001 15.2 20.4135 15.2 20.8001C15.2 21.1867 15.5134 21.5001 15.9 21.5001Z" fill="currentColor"/>
                                <path d="M12.9 21.5001C13.2866 21.5001 13.6 21.1867 13.6 20.8001C13.6 20.4135 13.2866 20.1001 12.9 20.1001C12.5134 20.1001 12.2 20.4135 12.2 20.8001C12.2 21.1867 12.5134 21.5001 12.9 21.5001Z" fill="currentColor"/>
                                <path d="M12 4C12.7 4 13.3 4.2 13.8 4.7C14.3 5.2 14.5 5.9 14.5 6.6V6.7C14.5 7.4 14.3 8.2 13.8 8.7C12.8 9.7 11.2 9.7 10.2 8.7C9.69998 8.2 9.39998 7.5 9.39998 6.8V6.7C9.29998 5.3 10.3 4.1 11.7 4C11.8 4 11.9 4 12 4ZM12 2.5C9.79998 2.5 7.99998 4.3 7.99998 6.5C7.99998 6.6 7.99998 6.6 7.99998 6.7V6.8C7.89998 9 9.59998 10.9 11.8 11C11.9 11 11.9 11 12 11C13.1 11 14.1 10.6 14.9 9.8C15.7 9 16.1 7.9 16 6.8V6.6C16 5.5 15.6 4.4 14.8 3.6C14.1 2.9 13 2.5 12 2.5Z" fill="currentColor"/>
                                <path d="M9.79999 21.5002H5.79999C5.39999 21.5002 4.99999 21.3002 4.69999 21.0002C4.39999 20.7002 4.29999 20.2002 4.39999 19.8002C4.99999 15.4002 8.99999 12.4002 13.4 13.0002C16.2 13.4002 18.6 15.2002 19.7 17.8002C19.8 18.2002 19.6 18.6002 19.2 18.8002C18.8 18.9002 18.4 18.8002 18.3 18.4002C17 15.1002 13.2 13.4002 9.89999 14.7002C7.69999 15.6002 6.09999 17.6002 5.79999 20.0002H9.79999C10.2 20.0002 10.6 20.3002 10.6 20.8002C10.6 21.3002 10.2 21.5002 9.79999 21.5002Z" fill="currentColor"/>
                            </svg>
                            <span class="action-label">{{ __('Account') }}</span>
                        </div>
                        <div class="account-menu">
                            @if (auth('customer')->check())
                                <a href="{{ route('customer.overview') }}">{{ auth('customer')->user()->name }}</a>
                                <a href="{{ route('customer.logout') }}">{{ __('Logout') }}</a>
                            @else
                                <a href="{{ route('customer.login') }}">{{ __('Login') }}</a>
                                <a href="{{ route('customer.register') }}">{{ __('Register') }}</a>
                            @endif
                        </div>
                    </div>

                    {!! apply_filters('after_theme_header_actions', null) !!}
                </div>
            </div>
        </header>

        {{-- Mobile Header --}}
        @if (Theme::get('headerMobile'))
            {!! Theme::get('headerMobile') !!}
        @else
            {!! Theme::partial('header-mobile') !!}
        @endif

        {{-- Panels --}}
        @if (is_plugin_active('ecommerce'))
            <div class="ps-panel--sidebar" id="cart-mobile" style="display: none">
                <div class="ps-panel__header">
                    <h3>{{ __('Shopping Cart') }}</h3>
                </div>
                <div class="navigation__content">
                    <div class="ps-cart--mobile">
                        {!! Theme::partial('cart') !!}
                    </div>
                </div>
            </div>
            <div class="ps-panel--sidebar" id="navigation-mobile" style="display: none">
                <div class="ps-panel__header">
                    <h3>{{ __('Categories') }}</h3>
                </div>
                <div class="ps-panel__content">
                    <ul class="menu--mobile">
                        @php
                            $categoriesDropdown = Theme::partial('product-categories-dropdown', ['categories' => ProductCategoryHelper::getProductCategoriesWithUrl()]);
                        @endphp
                        {!! $categoriesDropdown ?? null !!}
                    </ul>
                </div>
            </div>
        @endif

        @if (Theme::get('showBottomBarMenu', true))
            <div class="navigation--list" @if(theme_option('bottom_bar_menu_show_text', 'yes') != 'yes')data-hide-text="true"@endif style="--bottom-bar-menu-text-font-size: {{ theme_option('bottom_bar_menu_text_font_size', 14) }}px;">
                <div class="navigation__content">
                    <a class="navigation__item ps-toggle--sidebar" href="#menu-mobile"><i class="icon-menu"></i><span> {{ __('Menu') }}</span></a>
                    <a class="navigation__item ps-toggle--sidebar" href="#navigation-mobile"><i class="icon-list4"></i><span> {{ __('Categories') }}</span></a>
                    <a class="navigation__item ps-toggle--sidebar" href="#search-sidebar"><i class="icon-magnifier"></i><span> {{ __('Search') }}</span></a>
                    <a class="navigation__item ps-toggle--sidebar" href="#cart-mobile"><i class="icon-bag2"></i><span> {{ __('Cart') }}</span></a>
                </div>
            </div>
        @endif

        @if (is_plugin_active('ecommerce'))
            <div class="ps-panel--sidebar" id="search-sidebar" style="display: none">
                <div class="ps-panel__header">
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
                <div class="navigation__content"></div>
            </div>
        @endif

        <div class="ps-panel--sidebar" id="menu-mobile" style="display: none">
            <div class="ps-panel__header">
                <h3>{{ __('Menu') }}</h3>
            </div>
            <div class="ps-panel__content">
                {!! Menu::renderMenuLocation('main-menu', [
                    'view'    => 'menu',
                    'options' => ['class' => 'menu--mobile'],
                ]) !!}

                <ul class="menu--mobile menu--mobile-extra">
                    @if (is_plugin_active('ecommerce'))
                        @if (EcommerceHelper::isOrderTrackingEnabled())
                            <li><a href="{{ route('public.orders.tracking') }}"><i class="icon-check-square"></i> <span>{{ __('Track your order') }}</span></a></li>
                        @endif
                        @if (EcommerceHelper::isCompareEnabled())
                            <li><a href="{{ route('public.compare') }}"><i class="icon-chart-bars"></i> <span>{{ __('Compare') }}</span></a></li>
                        @endif
                        @if (EcommerceHelper::isWishlistEnabled())
                            <li><a href="{{ route('public.wishlist') }}"><i class="icon-heart"></i> <span>{{ __('Wishlist') }}</span></a></li>
                        @endif
                        @php $currencies = get_all_currencies(); @endphp
                        @if (count($currencies) > 1)
                            <li class="menu-item-has-children">
                                <a href="#"><span>{{ get_application_currency()->title }}</span></a>
                                <span class="sub-toggle"></span>
                                <ul class="sub-menu">
                                    @foreach ($currencies as $currency)
                                        @if ($currency->id !== get_application_currency_id())
                                            <li><a href="{{ route('public.change-currency', $currency->title) }}"><span>{{ $currency->title }}</span></a></li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        @endif
                    @endif
                    @if (is_plugin_active('language'))
                        @php
                            $supportedLocales = Language::getSupportedLocales();
                        @endphp
                        @if ($supportedLocales && count($supportedLocales) > 1)
                            @php
                                $languageDisplay = setting('language_display', 'all');
                            @endphp
                            <li class="menu-item-has-children">
                                <a href="#">
                                    @if ($languageDisplay == 'all' || $languageDisplay == 'flag')
                                        {!! language_flag(Language::getCurrentLocaleFlag(), Language::getCurrentLocaleName()) !!}
                                    @endif
                                    @if ($languageDisplay == 'all' || $languageDisplay == 'name')
                                        {{ Language::getCurrentLocaleName() }}
                                    @endif
                                </a>
                                <span class="sub-toggle"></span>
                                <ul class="sub-menu">
                                    @foreach ($supportedLocales as $localeCode => $properties)
                                        @if ($localeCode != Language::getCurrentLocale())
                                            <li>
                                                <a href="{{ Language::getSwitcherUrl($localeCode, $properties['lang_code']) }}">
                                                    @if ($languageDisplay == 'all' || $languageDisplay == 'flag'){!! language_flag($properties['lang_flag'], $properties['lang_name']) !!}@endif
                                                    @if ($languageDisplay == 'all' || $languageDisplay == 'name')<span>{{ $properties['lang_name'] }}</span>@endif
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            </li>
                        @endif
                    @endif
                </ul>
            </div>
        </div>