<div class="ps-banner-slider">
    <div class="banner-slider-inner">
        <div class="banner-carousel">
            @php
                $banners = [
                    'https://images-static.nykaa.com/uploads/9ff20482-b3a3-47a0-a77e-20a21ebed482.gif',
                    'https://images-static.nykaa.com/uploads/dadddf26-4051-481e-86da-a75596e538e7.jpg?tr=w-1920',
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
