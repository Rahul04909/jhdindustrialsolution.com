<?php
/**
 * JHD Industrial Solution - Brand Hero Slider Component
 * Fully touch-functional slider showcasing professional e-commerce banner ads.
 */
?>

<section class="hero-section" aria-label="Featured Brands and Promotions">
  <div class="hero-container">
    
    <!-- Slider Viewport -->
    <div class="slider-viewport" id="js-slider-viewport">
      <div class="slider-track" id="js-slider-track">
        
        <!-- Slide 1: Bosch -->
        <a href="index.php?brand=bosch" class="slide">
          <img src="assets/images/banners/banner_bosch.png" alt="Bosch Power Tools - Up to 35% OFF" class="slide-banner-img">
        </a>

        <!-- Slide 2: Honeywell -->
        <a href="index.php?brand=honeywell" class="slide">
          <img src="assets/images/banners/banner_honeywell.png" alt="Honeywell Safety Supplies - Flat 15% OFF" class="slide-banner-img">
        </a>

        <!-- Slide 3: Havells -->
        <a href="index.php?brand=havells" class="slide">
          <img src="assets/images/banners/banner_havells.png" alt="Havells Industrial Electricals - Lowest Prices" class="slide-banner-img">
        </a>

        <!-- Slide 4: Kirloskar -->
        <a href="index.php?brand=kirloskar" class="slide">
          <img src="assets/images/banners/banner_kirloskar.png" alt="Kirloskar Industrial Pumps - Starting at INR 4,999" class="slide-banner-img">
        </a>

        <!-- Slide 5: 3M -->
        <a href="index.php?brand=3m" class="slide">
          <img src="assets/images/banners/banner_3m.png" alt="3M Adhesives & Abrasives - Up to 40% OFF" class="slide-banner-img">
        </a>

      </div>
    </div>

    <!-- Navigation Arrows -->
    <button class="slider-arrow slider-arrow--left" id="js-slider-prev" aria-label="Previous Slide">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
        <polyline points="15 18 9 12 15 6"></polyline>
      </svg>
    </button>
    <button class="slider-arrow slider-arrow--right" id="js-slider-next" aria-label="Next Slide">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
        <polyline points="9 18 15 12 9 6"></polyline>
      </svg>
    </button>

    <!-- Bottom Brand Selection Tabs -->
    <div class="brand-tabs" id="js-brand-tabs">
      <div class="brand-tab-item active" data-slide="0">
        <span class="brand-tab-name">Bosch</span>
        <span class="brand-tab-promo">Upto 35% OFF</span>
      </div>
      <div class="brand-tab-item" data-slide="1">
        <span class="brand-tab-name">Honeywell</span>
        <span class="brand-tab-promo">Flat 15% OFF</span>
      </div>
      <div class="brand-tab-item" data-slide="2">
        <span class="brand-tab-name">Havells</span>
        <span class="brand-tab-promo">Lowest Prices</span>
      </div>
      <div class="brand-tab-item" data-slide="3">
        <span class="brand-tab-name">Kirloskar</span>
        <span class="brand-tab-promo">Pumps at ₹4,999</span>
      </div>
      <div class="brand-tab-item" data-slide="4">
        <span class="brand-tab-name">3M Solution</span>
        <span class="brand-tab-promo">Upto 40% OFF</span>
      </div>
    </div>

  </div>
</section>

<!-- Slider Logic -->
<script>
document.addEventListener("DOMContentLoaded", () => {
  const track = document.getElementById("js-slider-track");
  const slides = Array.from(track.children);
  const nextButton = document.getElementById("js-slider-next");
  const prevButton = document.getElementById("js-slider-prev");
  const tabsContainer = document.getElementById("js-brand-tabs");
  const tabs = Array.from(tabsContainer.querySelectorAll(".brand-tab-item"));
  const viewport = document.getElementById("js-slider-viewport");

  let currentSlide = 0;
  let autoplayTimer = null;
  const slideCount = slides.length;
  const slideInterval = 5000; // 5 seconds

  const updateSlider = (index) => {
    // Clamp slide index
    if (index >= slideCount) index = 0;
    if (index < 0) index = slideCount - 1;
    currentSlide = index;

    // Move slider track
    track.style.transform = `translateX(-${currentSlide * 20}%)`;

    // Update Brand Tabs
    tabs.forEach((tab, i) => {
      if (i === currentSlide) {
        tab.classList.add("active");
        // Center active tab horizontally in scrollable mobile strip
        const containerWidth = tabsContainer.clientWidth;
        const tabWidth = tab.offsetWidth;
        const tabLeft = tab.offsetLeft;
        tabsContainer.scrollTo({
          left: tabLeft - (containerWidth / 2) + (tabWidth / 2),
          behavior: 'smooth'
        });
      } else {
        tab.classList.remove("active");
      }
    });
  };

  const nextSlide = () => {
    updateSlider(currentSlide + 1);
  };

  const prevSlide = () => {
    updateSlider(currentSlide - 1);
  };

  // Click Handlers for buttons
  nextButton.addEventListener("click", () => {
    nextSlide();
    resetAutoplay();
  });

  prevButton.addEventListener("click", () => {
    prevSlide();
    resetAutoplay();
  });

  // Tab click handlers
  tabs.forEach((tab, i) => {
    tab.addEventListener("click", () => {
      updateSlider(i);
      resetAutoplay();
    });
  });

  // Autoplay functionality
  const startAutoplay = () => {
    if (!autoplayTimer) {
      autoplayTimer = setInterval(nextSlide, slideInterval);
    }
  };

  const stopAutoplay = () => {
    if (autoplayTimer) {
      clearInterval(autoplayTimer);
      autoplayTimer = null;
    }
  };

  const resetAutoplay = () => {
    stopAutoplay();
    startAutoplay();
  };

  // Hover states to pause auto-rotate
  viewport.addEventListener("mouseenter", stopAutoplay);
  viewport.addEventListener("mouseleave", startAutoplay);

  // Swipe support for mobile
  let startX = 0;
  let endX = 0;

  viewport.addEventListener("touchstart", (e) => {
    startX = e.changedTouches[0].screenX;
    stopAutoplay();
  }, { passive: true });

  viewport.addEventListener("touchend", (e) => {
    endX = e.changedTouches[0].screenX;
    handleSwipe();
    startAutoplay();
  }, { passive: true });

  const handleSwipe = () => {
    const swipeThreshold = 50; // pixels
    if (startX - endX > swipeThreshold) {
      // Swiped Left
      nextSlide();
    } else if (endX - startX > swipeThreshold) {
      // Swiped Right
      prevSlide();
    }
  };

  // Initialize
  startAutoplay();
});
</script>
