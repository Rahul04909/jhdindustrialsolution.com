<div class="ps-banner-slider">
    <div class="banner-slider-inner">
        <div class="banner-carousel">
            @php
                $banners = [
                    'https://images-static.nykaa.com/uploads/37f3c450-06bd-48dd-91a8-68fbd70b631a.jpg?tr=w-1920',
                    'https://images-static.nykaa.com/uploads/dadddf26-4051-481e-86da-a75596e538e7.jpg?tr=w-1920',
                ];
            @endphp
            @foreach ($banners as $banner)
                <div class="banner-slide">
                    <a href="{{ $bannerLink ?? '#' }}" class="banner-link">
                        <img src="{{ $banner }}" alt="{{ __('Banner') }}" loading="lazy">
                    </a>
                </div>
            @endforeach
        </div>
    </div>
</div>

@once
    @push('footer')
        <script>
            $(document).ready(function () {
                if ($.fn.slick) {
                    $('.banner-carousel').slick({
                        dots: true,
                        arrows: true,
                        infinite: true,
                        autoplay: true,
                        autoplaySpeed: 4000,
                        speed: 600,
                        slidesToShow: 1,
                        slidesToScroll: 1,
                        fade: true,
                        cssEase: 'linear',
                        prevArrow: '<button type="button" class="slick-prev"><i class="icon-chevron-left"></i></button>',
                        nextArrow: '<button type="button" class="slick-next"><i class="icon-chevron-right"></i></button>',
                    });
                }
            });
        </script>
    @endpush
@endonce
