@if (count($sliders) > 0 && $sliders->loadMissing('metadata'))
    <div class="ps-simple-slider">
        <div class="slider-inner">
            <div class="owl-slider" data-owl-auto="true" data-owl-loop="true"
                data-owl-speed="5000" data-owl-gap="0" data-owl-nav="true"
                data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1"
                data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1"
                data-owl-item-xl="1" data-owl-duration="1000" data-owl-mousedrag="on"
                data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
                @foreach($sliders as $slider)
                    <div class="slider-item">
                        @php
                            $img = RvMedia::getImageUrl($slider->image, null, false, RvMedia::getDefaultImage());
                            $tabletImage = $slider->getMetaData('tablet_image', true) ?: $img;
                            $mobileImage = $slider->getMetaData('mobile_image', true) ?: $tabletImage;
                        @endphp
                        <picture>
                            <img src="{{ $img }}" alt="{{ $slider->title ?: 'slider' }}" loading="eager">
                            <source srcset="{{ $img }}" media="(min-width: 1200px)">
                            <source srcset="{{ RvMedia::getImageUrl($tabletImage) }}" media="(min-width: 768px)">
                            <source srcset="{{ RvMedia::getImageUrl($mobileImage) }}" media="(max-width: 767px)">
                        </picture>
                        @if ($slider->link)
                            <a class="slider-overlay" href="{{ url($slider->link) }}" title="{{ $slider->title }}"></a>
                        @endif
                    </div>
                @endforeach
            </div>
        </div>
    </div>
@endif
