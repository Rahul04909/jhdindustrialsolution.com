<div class="ps-banner-slider">
    <div class="banner-slider-inner">
        <div class="banner-carousel">
            @php
                $banners = [
                    'https://images-static.nykaa.com/uploads/9ff20482-b3a3-47a0-a77e-20a21ebed482.gif',
                    'https://images-static.nykaa.com/uploads/9ff20482-b3a3-47a0-a77e-20a21ebed482.gif',
                ];
            @endphp
            @foreach ($banners as $banner)
                <div class="banner-slide">
                    <img src="{{ $banner }}" alt="{{ __('Banner') }}" loading="lazy">
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
                        responsive: [
                            {
                                breakpoint: 768,
                                settings: {
                                    arrows: false,
                                    dots: true
                                }
                            }
                        ]
                    });
                }
            });
        </script>
    @endpush
@endonce
