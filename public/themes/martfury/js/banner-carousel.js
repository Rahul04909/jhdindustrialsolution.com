(function () {
    'use strict';

    var el = document.querySelector('.banner-carousel');
    if (!el) return;

    function init() {
        if (typeof jQuery === 'undefined' || !jQuery.fn || !jQuery.fn.slick) {
            setTimeout(init, 50);
            return;
        }
        jQuery(el).slick({
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
                { breakpoint: 768, settings: { arrows: false, dots: true } }
            ]
        });
    }

    if (document.readyState === 'loading') {
        document.addEventListener('DOMContentLoaded', init);
    } else {
        init();
    }
})();
