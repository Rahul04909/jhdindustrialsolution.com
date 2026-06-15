<?php
/**
 * JHD Industrial Solution - Brand Hero Slider Component
 * Fully touch-functional slider synced with brand selection tabs.
 */
?>

<section class="hero-section" aria-label="Featured Brands and Promotions">
  <div class="hero-container">
    
    <!-- Slider Viewport -->
    <div class="slider-viewport" id="js-slider-viewport">
      <div class="slider-track" id="js-slider-track">
        
        <!-- Slide 1: Bosch -->
        <div class="slide slide--bosch">
          <div class="slide-content">
            <span class="slide-badge">Bosch Authorized Partner</span>
            <h2 class="slide-title">Heavy Duty<br>Power Tools</h2>
            <p class="slide-desc">German engineering for industrial productivity. Get maximum precision, safety, and durability on all cordless drills, grinders, and hammers.</p>
            <a href="index.php?brand=bosch" class="slide-cta">
              Explore Bosch Range
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </a>
          </div>
          <div class="slide-image-wrap">
            <!-- Stylized Power Drill SVG -->
            <svg class="slide-graphic" width="260" height="260" viewBox="0 0 240 240" fill="none" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <linearGradient id="bosch-grad" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#3b82f6" />
                  <stop offset="100%" stop-color="#1d4ed8" />
                </linearGradient>
              </defs>
              <!-- Drill Body -->
              <path d="M40 90h110c11 0 20 9 20 20v20c0 11-9 20-20 20H40V90z" fill="url(#bosch-grad)" />
              <path d="M70 140v60c0 8.3-6.7 15-15 15s-15-6.7-15-15v-60h30z" fill="#1e293b" />
              <!-- Battery Pack -->
              <rect x="30" y="195" width="50" height="15" rx="4" fill="#3b82f6" />
              <!-- Chuck and Bit -->
              <rect x="150" y="105" width="30" height="30" rx="3" fill="#64748b" />
              <rect x="180" y="115" width="40" height="10" rx="2" fill="#94a3b8" />
              <line x1="220" y1="120" x2="235" y2="120" stroke="#cbd5e1" stroke-width="3" stroke-linecap="round" />
              <!-- Details -->
              <circle cx="110" cy="115" r="12" fill="#1e293b" />
              <circle cx="110" cy="115" r="4" fill="#ef4444" />
              <rect x="50" y="100" width="30" height="8" rx="2" fill="#1e293b" />
              <!-- Trigger -->
              <path d="M70 150c6 0 10-4 10-10h-10v10z" fill="#ef4444" />
            </svg>
          </div>
        </div>

        <!-- Slide 2: Honeywell -->
        <div class="slide slide--honeywell">
          <div class="slide-content">
            <span class="slide-badge">Honeywell Elite Distributor</span>
            <h2 class="slide-title">Advanced Safety<br>&amp; PPE Gear</h2>
            <p class="slide-desc">Protect your workforce with premium helmets, respiratory gear, eye protection, and safety harnesses designed to exceed industrial standards.</p>
            <a href="index.php?brand=honeywell" class="slide-cta">
              Shop Safety Equipment
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </a>
          </div>
          <div class="slide-image-wrap">
            <!-- Stylized Safety Helmet SVG -->
            <svg class="slide-graphic" width="260" height="260" viewBox="0 0 240 240" fill="none" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <linearGradient id="honey-grad" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#fbbf24" />
                  <stop offset="100%" stop-color="#f59e0b" />
                </linearGradient>
              </defs>
              <!-- Helmet Dome -->
              <path d="M40 130C40 70 80 50 120 50s80 20 80 80H40z" fill="url(#honey-grad)" />
              <!-- Visor / Brim -->
              <path d="M30 130c0-3 3-5 6-5h168c3 0 6 2 6 5v6c0 3-3 5-6 5H36c-3 0-6-2-6-5v-6z" fill="#f59e0b" />
              <!-- Highlight ridge -->
              <path d="M100 52c10 10 10 30 10 73h20c0-43 0-63 10-73H100z" fill="#fff" fill-opacity="0.3" />
              <!-- Shield Logo on Helmet -->
              <polygon points="120,75 130,80 128,92 120,98 112,92 110,80" fill="#1e293b" />
              <!-- Strap details -->
              <path d="M70 136v15c0 10 10 15 20 15h60c10 0 20-5 20-15v-15" stroke="#4b5563" stroke-width="4" stroke-linecap="round" />
            </svg>
          </div>
        </div>

        <!-- Slide 3: Havells -->
        <div class="slide slide--havells">
          <div class="slide-content">
            <span class="slide-badge">Havells Corporate Partner</span>
            <h2 class="slide-title">Industrial Electricals<br>&amp; Cabling</h2>
            <p class="slide-desc">High-voltage heavy duty wires, energy-efficient switchgears, and MCCBs built to secure your manufacturing units and warehouses.</p>
            <a href="index.php?brand=havells" class="slide-cta">
              View Electrical Catalog
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </a>
          </div>
          <div class="slide-image-wrap">
            <!-- Stylized MCB / Switch SVG -->
            <svg class="slide-graphic" width="260" height="260" viewBox="0 0 240 240" fill="none" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <linearGradient id="havells-grad" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#ef4444" />
                  <stop offset="100%" stop-color="#b91c1c" />
                </linearGradient>
              </defs>
              <!-- Main MCB Body -->
              <rect x="60" y="40" width="120" height="160" rx="8" fill="#e5e7eb" stroke="#d1d5db" stroke-width="2" />
              <rect x="75" y="55" width="90" height="130" rx="4" fill="#ffffff" />
              <!-- Toggle switch panel -->
              <rect x="95" y="80" width="50" height="80" rx="4" fill="#f3f4f6" stroke="#cbd5e1" />
              <!-- Toggle Switch Lever -->
              <rect x="105" y="90" width="30" height="40" rx="3" fill="url(#havells-grad)" />
              <line x1="105" y1="110" x2="135" y2="110" stroke="#ffffff" stroke-width="2" />
              <!-- Status Indicators -->
              <circle cx="120" cy="70" r="6" fill="#10b981" />
              <!-- Wire connection ports -->
              <circle cx="90" cy="190" r="8" fill="#374151" />
              <circle cx="150" cy="190" r="8" fill="#374151" />
              <line x1="90" y1="190" x2="90" y2="210" stroke="#9ca3af" stroke-width="4" />
              <line x1="150" y1="190" x2="150" y2="210" stroke="#9ca3af" stroke-width="4" />
            </svg>
          </div>
        </div>

        <!-- Slide 4: Kirloskar -->
        <div class="slide slide--kirloskar">
          <div class="slide-content">
            <span class="slide-badge">Kirloskar Certified Supplier</span>
            <h2 class="slide-title">High-Efficiency<br>Pumps &amp; Motors</h2>
            <p class="slide-desc">Engineered for extreme reliability. Explore Kirloskar monobloc, domestic, and submersibles to handle high-volume fluids and fluid pressure operations.</p>
            <a href="index.php?brand=kirloskar" class="slide-cta">
              Get RFQ Quote
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </a>
          </div>
          <div class="slide-image-wrap">
            <!-- Stylized Pump Motor SVG -->
            <svg class="slide-graphic" width="260" height="260" viewBox="0 0 240 240" fill="none" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <linearGradient id="kirl-grad" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#10b981" />
                  <stop offset="100%" stop-color="#047857" />
                </linearGradient>
              </defs>
              <!-- Motor Body Cylindrical -->
              <rect x="50" y="80" width="110" height="80" rx="10" fill="url(#kirl-grad)" />
              <!-- Cooling Fins -->
              <rect x="65" y="70" width="8" height="100" rx="3" fill="#047857" />
              <rect x="85" y="70" width="8" height="100" rx="3" fill="#047857" />
              <rect x="105" y="70" width="8" height="100" rx="3" fill="#047857" />
              <rect x="125" y="70" width="8" height="100" rx="3" fill="#047857" />
              <!-- Pump Head -->
              <circle cx="180" cy="120" r="35" fill="#1f2937" />
              <rect x="165" y="100" width="30" height="40" fill="#374151" />
              <!-- Intake & Discharge pipes -->
              <rect x="170" y="55" width="20" height="20" rx="2" fill="#4b5563" />
              <rect x="195" y="110" width="20" height="20" rx="2" fill="#4b5563" />
              <!-- Shaft -->
              <line x1="30" y1="120" x2="50" y2="120" stroke="#9ca3af" stroke-width="8" stroke-linecap="round" />
            </svg>
          </div>
        </div>

        <!-- Slide 5: 3M -->
        <div class="slide slide--3m">
          <div class="slide-content">
            <span class="slide-badge">3M Innovation Outlet</span>
            <h2 class="slide-title">Adhesives, Tapes<br>&amp; Abrasives</h2>
            <p class="slide-desc">Boost manufacturing output with genuine 3M solutions. Premium structural adhesives, double-sided VHB tapes, and precision grinding wheels.</p>
            <a href="index.php?brand=3m" class="slide-cta">
              Shop 3M Solutions
              <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <line x1="5" y1="12" x2="19" y2="12"></line>
                <polyline points="12 5 19 12 12 19"></polyline>
              </svg>
            </a>
          </div>
          <div class="slide-image-wrap">
            <!-- Stylized Industrial Tape Roll SVG -->
            <svg class="slide-graphic" width="260" height="260" viewBox="0 0 240 240" fill="none" xmlns="http://www.w3.org/2000/svg">
              <defs>
                <linearGradient id="three-m-grad" x1="0%" y1="0%" x2="100%" y2="100%">
                  <stop offset="0%" stop-color="#ec4899" />
                  <stop offset="100%" stop-color="#be185d" />
                </linearGradient>
              </defs>
              <!-- Outer roll of tape -->
              <circle cx="120" cy="120" r="70" fill="url(#three-m-grad)" stroke="#9d174d" stroke-width="2" />
              <!-- Tape inner layers -->
              <circle cx="120" cy="120" r="50" fill="#f43f5e" />
              <!-- Core plastic hub -->
              <circle cx="120" cy="120" r="35" fill="#f3f4f6" stroke="#e5e7eb" stroke-width="3" />
              <!-- Logo print on core -->
              <text x="120" y="125" font-family="'Inter', sans-serif" font-weight="900" font-size="16" fill="#be185d" text-anchor="middle">3M</text>
              <!-- Unrolling tape strip -->
              <path d="M120 50h80c10 0 15 5 15 15v40" stroke="url(#three-m-grad)" stroke-width="12" stroke-linecap="round" fill="none" />
            </svg>
          </div>
        </div>

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
