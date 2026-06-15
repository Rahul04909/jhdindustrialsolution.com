<?php
/**
 * JHD Industrial Solution - Header Component
 * Designed with modern B2B e-commerce UX best practices.
 */
?>

<!-- Announcement / Promo Banner -->
<div class="promo-banner">
  <div class="promo-banner__content">
    <div class="promo-banner__brand">
      JHD<span>Business</span>
    </div>
    <span class="promo-banner__text">AI-Powered Industrial Procurement. Move Faster. Source Smarter. Scale Seamlessly.</span>
  </div>
  <button class="promo-banner__cta" onclick="window.location.href='#business'">Explore JHD Business</button>
</div>

<!-- Main Header -->
<header class="main-header">
  <div class="header-container">
    
    <!-- Mobile Hamburger Menu Button -->
    <button class="mobile-menu-toggle" id="js-drawer-open" aria-label="Open Menu">
      <span></span>
      <span></span>
      <span></span>
    </button>

    <!-- Company Logo -->
    <div class="header-logo">
      <a href="index.php" class="logo-link" aria-label="JHD Industrial Solution Home">
        <img class="logo-img" src="assets/images/logo/logo.png" alt="JHD Industrial Solution Logo">
      </a>
    </div>

    <!-- Location Selector -->
    <div class="location-selector" id="js-modal-open" aria-label="Select Delivery Location">
      <span class="location-icon">
        <!-- Map Pin Icon SVG -->
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
          <path d="M12 2C8.13 2 5 5.13 5 9C5 14.25 12 22 12 22C12 22 19 14.25 19 9C19 5.13 15.87 2 12 2ZM12 11.5C10.62 11.5 9.5 10.38 9.5 9C9.5 7.62 10.62 6.5 12 6.5C13.38 6.5 14.5 7.62 14.5 9C14.5 10.38 13.38 11.5 12 11.5Z"/>
        </svg>
      </span>
      <div class="location-info">
        <span class="location-title">Deliver to <span id="header-pincode">126125</span></span>
        <span class="location-value">
          <span id="header-city">Jind</span>
          <!-- Chevron Icon SVG -->
          <svg width="12" height="12" viewBox="0 0 24 24" fill="currentColor">
            <path d="M8.59 16.59L13.17 12 8.59 7.41 10 6l6 6-6 6-1.41-1.41z"/>
          </svg>
        </span>
      </div>
    </div>

    <!-- Search Bar -->
    <div class="header-search">
      <form class="search-form" id="js-search-form" action="index.php" method="GET" autocomplete="off">
        <input type="text" class="search-input" id="js-search-input" name="search" placeholder="Search Product, Category, Brand..." aria-label="Search">
        <button type="submit" class="search-button" aria-label="Submit Search">
          <!-- Search Icon SVG -->
          <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
            <path d="M15.5 14h-.79l-.28-.27C15.41 12.59 16 11.11 16 9.5 16 5.91 13.09 3 9.5 3S3 5.91 3 9.5 5.91 16 9.5 16c1.61 0 3.09-.59 4.23-1.57l.27.28v.79l5 4.99L20.49 19l-4.99-5zm-6 0C7.01 14 5 11.99 5 9.5S7.01 5 9.5 5 14 7.01 14 9.5 11.99 14 9.5 14z"/>
          </svg>
        </button>
      </form>
      
      <!-- Search Autocomplete Dropdown -->
      <div class="search-suggestions" id="js-search-suggestions">
        <!-- Popular Categories Section -->
        <div class="search-suggestions__section-title">Popular Categories</div>
        <ul class="search-suggestions__list">
          <li class="search-suggestions__item" data-query="Power Tools">
            <span class="search-suggestions__icon">⚡</span>
            <span>Power Tools &amp; Accessories</span>
          </li>
          <li class="search-suggestions__item" data-query="Safety Shoes">
            <span class="search-suggestions__icon">🛡️</span>
            <span>Safety Shoes &amp; Protection Gear</span>
          </li>
          <li class="search-suggestions__item" data-query="LED Lights">
            <span class="search-suggestions__icon">💡</span>
            <span>LED Industrial Lighting</span>
          </li>
          <li class="search-suggestions__item" data-query="Hand Tools">
            <span class="search-suggestions__icon">🔧</span>
            <span>Hand Tools &amp; Toolkits</span>
          </li>
          <li class="search-suggestions__item" data-query="Pumps &amp; Motors">
            <span class="search-suggestions__icon">⚙️</span>
            <span>Industrial Pumps &amp; Motors</span>
          </li>
        </ul>
        
        <!-- Recent Searches Section (Populated via JS) -->
        <div id="js-recent-searches-section" style="display: none;">
          <div class="search-suggestions__section-title">Recent Searches</div>
          <ul class="search-suggestions__list" id="js-recent-searches-list">
            <!-- Dynamic elements go here -->
          </ul>
        </div>
      </div>
    </div>

    <!-- Header Actions -->
    <div class="header-actions">
      
      <!-- Login / Register -->
      <div class="action-item action-item--login">
        <div class="action-icon-wrapper">
          <!-- User Icon SVG -->
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12 12c2.21 0 4-1.79 4-4s-1.79-4-4-4-4 1.79-4 4 1.79 4 4 4zm0 2c-2.67 0-8 1.34-8 4v2h16v-2c0-2.66-5.33-4-8-4z"/>
          </svg>
        </div>
        <div class="action-info">
          <span class="action-label">Sign In</span>
          <span class="action-value">Login Now</span>
        </div>
        <!-- Hover Account Menu -->
        <div class="login-dropdown">
          <div class="login-dropdown__welcome">Welcome to JHD Solutions</div>
          <button class="login-dropdown__btn" onclick="alert('Login flow activated!')">Login / Register</button>
          <ul class="login-dropdown__links">
            <li class="login-dropdown__link-item"><a href="#profile">My Profile</a></li>
            <li class="login-dropdown__link-item"><a href="#orders">Corporate Orders</a></li>
            <li class="login-dropdown__link-item"><a href="#quotes">RFQ Manager</a></li>
            <li class="login-dropdown__link-item"><a href="#accounts">Manage Company Account</a></li>
          </ul>
        </div>
      </div>

      <!-- Track Order -->
      <div class="action-item action-item--track" onclick="alert('Tracking system loading...')">
        <div class="action-icon-wrapper">
          <!-- Truck Icon SVG -->
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
            <path d="M20 8h-3V4H3c-1.1 0-2 .9-2 2v11h2c0 1.66 1.34 3 3 3s3-1.34 3-3h6c0 1.66 1.34 3 3 3s3-1.34 3-3h2v-5l-3-4zM6 18.5c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5zm12 0c-.83 0-1.5-.67-1.5-1.5s.67-1.5 1.5-1.5 1.5.67 1.5 1.5-.67 1.5-1.5 1.5zm2-5.5h-3V9h3v4z"/>
          </svg>
        </div>
        <div class="action-info">
          <span class="action-label">MRO Shipping</span>
          <span class="action-value">Track Order</span>
        </div>
      </div>

      <!-- Cart -->
      <div class="action-item action-item--cart" onclick="alert('Navigating to cart...')">
        <div class="action-icon-wrapper">
          <!-- Cart Icon SVG -->
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
            <path d="M7 18c-1.1 0-1.99.9-1.99 2S5.9 22 7 22s2-.9 2-2-.9-2-2-2zM1 2v2h2l3.6 7.59-1.35 2.45c-.16.28-.25.61-.25.96 0 1.1.9 2 2 2h12v-2H7.42c-.14 0-.25-.11-.25-.25l.03-.12.9-1.63h7.45c.75 0 1.41-.41 1.75-1.03l3.58-6.49c.08-.14.12-.31.12-.48 0-.55-.45-1-1-1H5.21l-.94-2H1zm16 16c-1.1 0-1.99.9-1.99 2s.9 2 1.99 2 2-.9 2-2-.9-2-2-2z"/>
          </svg>
          <span class="cart-badge" id="js-cart-count">0</span>
        </div>
        <div class="action-info">
          <span class="action-label">Items</span>
          <span class="action-value">Cart</span>
        </div>
      </div>

      <!-- More / Extended Menu -->
      <div class="action-item action-item--more">
        <div class="action-icon-wrapper">
          <!-- Three Vertical Dots SVG -->
          <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
            <path d="M12 8c1.1 0 2-.9 2-2s-.9-2-2-2-2 .9-2 2 .9 2 2 2zm0 2c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2zm0 6c-1.1 0-2 .9-2 2s.9 2 2 2 2-.9 2-2-.9-2-2-2z"/>
          </svg>
        </div>
        <div class="more-dropdown">
          <ul class="more-dropdown__links">
            <li class="more-dropdown__link-item"><a href="#about">About JHD</a></li>
            <li class="more-dropdown__link-item"><a href="#bulk">Bulk Procurement</a></li>
            <li class="more-dropdown__link-item"><a href="#support">Help &amp; Support</a></li>
            <li class="more-dropdown__link-item"><a href="#contact">Contact Business Desk</a></li>
          </ul>
        </div>
      </div>

    </div>
  </div>
</header>

<!-- Pincode/Location Selection Modal -->
<div class="pincode-modal" id="js-pincode-modal" aria-hidden="true" role="dialog">
  <div class="pincode-modal__container">
    <div class="pincode-modal__header">
      <h3 class="pincode-modal__title">Select Delivery Location</h3>
      <button class="pincode-modal__close" id="js-modal-close" aria-label="Close modal">
        <!-- Close icon SVG -->
        <svg width="20" height="20" viewBox="0 0 24 24" fill="currentColor">
          <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41z"/>
        </svg>
      </button>
    </div>
    <div class="pincode-modal__body">
      <p class="pincode-modal__desc">Enter your delivery pincode to check stock availability and estimated delivery dates for your corporate orders.</p>
      <form class="pincode-modal__input-group" id="js-pincode-form" onsubmit="return false;">
        <input type="text" class="pincode-modal__input" id="js-pincode-input" placeholder="Enter 6-Digit Pincode" maxlength="6" inputmode="numeric" pattern="[0-9]{6}" required>
        <button type="submit" class="pincode-modal__submit">Apply</button>
      </form>
      <div class="pincode-modal__error" id="js-pincode-error">Please enter a valid 6-digit numeric pincode.</div>
    </div>
  </div>
</div>

<!-- Mobile Side Navigation Drawer -->
<div class="mobile-drawer-overlay" id="js-drawer-overlay"></div>
<aside class="mobile-drawer" id="js-drawer">
  <div class="mobile-drawer__header">
    <div class="header-logo">
      <a href="index.php" class="logo-link">
        <img class="logo-img logo-img--drawer" src="assets/images/logo/logo.png" alt="JHD Industrial Solution Logo">
      </a>
    </div>
    <button class="mobile-drawer__close" id="js-drawer-close" aria-label="Close menu">
      <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
        <path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12 19 6.41z"/>
      </svg>
    </button>
  </div>
  
  <!-- Location selector inside mobile drawer -->
  <div class="mobile-drawer__location" id="js-drawer-location-open">
    <div class="location-selector" style="padding: 0; background: none;">
      <span class="location-icon">
        <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
          <path d="M12 2C8.13 2 5 5.13 5 9C5 14.25 12 22 12 22C12 22 19 14.25 19 9C19 5.13 15.87 2 12 2ZM12 11.5C10.62 11.5 9.5 10.38 9.5 9C9.5 7.62 10.62 6.5 12 6.5C13.38 6.5 14.5 7.62 14.5 9C14.5 10.38 13.38 11.5 12 11.5Z"/>
        </svg>
      </span>
      <div class="location-info">
        <span class="location-title">Deliver to <span id="drawer-pincode">126125</span></span>
        <span class="location-value"><span id="drawer-city">Jind</span> &gt;</span>
      </div>
    </div>
  </div>

  <div class="mobile-drawer__content">
    <div class="mobile-drawer__section-title">Shop By Category</div>
    <ul class="mobile-drawer__list">
      <li class="mobile-drawer__item"><a href="#power-tools"><span>⚡ Power Tools</span><span>&gt;</span></a></li>
      <li class="mobile-drawer__item"><a href="#safety"><span>🛡️ Safety Equipment</span><span>&gt;</span></a></li>
      <li class="mobile-drawer__item"><a href="#electricals"><span>💡 Electrical &amp; Lighting</span><span>&gt;</span></a></li>
      <li class="mobile-drawer__item"><a href="#hand-tools"><span>🔧 Hand Tools</span><span>&gt;</span></a></li>
      <li class="mobile-drawer__item"><a href="#pumps"><span>⚙️ Pumps &amp; Motors</span><span>&gt;</span></a></li>
      <li class="mobile-drawer__item"><a href="#office"><span>📂 Office Supplies</span><span>&gt;</span></a></li>
      <li class="mobile-drawer__item"><a href="#fasteners"><span>🔩 Fasteners &amp; Hardware</span><span>&gt;</span></a></li>
    </ul>

    <div class="mobile-drawer__section-title" style="margin-top: 16px;">Corporate Links</div>
    <ul class="mobile-drawer__list">
      <li class="mobile-drawer__item"><a href="#business">JHD Business Solutions</a></li>
      <li class="mobile-drawer__item"><a href="#quotes">Submit RFQ</a></li>
      <li class="mobile-drawer__item"><a href="#track">Track MRO Shipment</a></li>
      <li class="mobile-drawer__item"><a href="#login" onclick="alert('Login clicked');">Sign In / Register</a></li>
    </ul>
  </div>
  <div class="mobile-drawer__footer">
    Corporate Office: Jind, Haryana<br>
    © 2026 JHD Industrial Solution
  </div>
</aside>

<!-- Interactive Frontend Logic -->
<script>
document.addEventListener("DOMContentLoaded", () => {
  
  // --- DYNAMIC FAVICON INJECTION ---
  (function() {
    let faviconLink = document.querySelector("link[rel~='icon']");
    if (!faviconLink) {
      faviconLink = document.createElement('link');
      faviconLink.rel = 'icon';
      faviconLink.type = 'image/png';
      document.head.appendChild(faviconLink);
    }
    faviconLink.href = 'favicon.png';
  })();
  
  // --- PINCODE SELECTOR LOCALSTORAGE LOGIC ---
  const pincodeDisplayHeader = document.getElementById("header-pincode");
  const cityDisplayHeader = document.getElementById("header-city");
  const pincodeDisplayDrawer = document.getElementById("drawer-pincode");
  const cityDisplayDrawer = document.getElementById("drawer-city");
  const pincodeInput = document.getElementById("js-pincode-input");
  
  const pincodeModal = document.getElementById("js-pincode-modal");
  const btnOpenModal = document.getElementById("js-modal-open");
  const btnOpenModalDrawer = document.getElementById("js-drawer-location-open");
  const btnCloseModal = document.getElementById("js-modal-close");
  const pincodeForm = document.getElementById("js-pincode-form");
  const pincodeError = document.getElementById("js-pincode-error");

  // Mock mapping of pincode prefix to Indian city
  const resolveCityFromPincode = (pincode) => {
    if (pincode.startsWith("126")) return "Jind";
    if (pincode.startsWith("110")) return "New Delhi";
    if (pincode.startsWith("400")) return "Mumbai";
    if (pincode.startsWith("560")) return "Bengaluru";
    if (pincode.startsWith("700")) return "Kolkata";
    if (pincode.startsWith("600")) return "Chennai";
    if (pincode.startsWith("500")) return "Hyderabad";
    if (pincode.startsWith("122")) return "Gurugram";
    if (pincode.startsWith("201")) return "Noida";
    return "India";
  };

  const updateLocationUI = (pincode, city) => {
    if(pincodeDisplayHeader) pincodeDisplayHeader.textContent = pincode;
    if(cityDisplayHeader) cityDisplayHeader.textContent = city;
    if(pincodeDisplayDrawer) pincodeDisplayDrawer.textContent = pincode;
    if(cityDisplayDrawer) cityDisplayDrawer.textContent = city;
    if(pincodeInput) pincodeInput.value = pincode;
  };

  // Load from local storage or set default
  const savedPincode = localStorage.getItem("jhd_pincode") || "126125";
  const savedCity = localStorage.getItem("jhd_city") || "Jind";
  updateLocationUI(savedPincode, savedCity);

  const openPincodeModal = () => {
    pincodeModal.classList.add("pincode-modal--open");
    pincodeModal.setAttribute("aria-hidden", "false");
    pincodeInput.focus();
  };

  const closePincodeModal = () => {
    pincodeModal.classList.remove("pincode-modal--open");
    pincodeModal.setAttribute("aria-hidden", "true");
    pincodeError.style.display = "none";
  };

  btnOpenModal.addEventListener("click", openPincodeModal);
  if (btnOpenModalDrawer) {
    btnOpenModalDrawer.addEventListener("click", () => {
      closeDrawer();
      openPincodeModal();
    });
  }
  btnCloseModal.addEventListener("click", closePincodeModal);

  // Close modal when clicking outside
  pincodeModal.addEventListener("click", (e) => {
    if (e.target === pincodeModal) {
      closePincodeModal();
    }
  });

  pincodeForm.addEventListener("submit", (e) => {
    e.preventDefault();
    const pinVal = pincodeInput.value.trim();
    if (/^[0-9]{6}$/.test(pinVal)) {
      const city = resolveCityFromPincode(pinVal);
      localStorage.setItem("jhd_pincode", pinVal);
      localStorage.setItem("jhd_city", city);
      updateLocationUI(pinVal, city);
      closePincodeModal();
    } else {
      pincodeError.style.display = "block";
    }
  });


  // --- MOBILE DRAWER NAVIGATION LOGIC ---
  const drawer = document.getElementById("js-drawer");
  const drawerOverlay = document.getElementById("js-drawer-overlay");
  const btnOpenDrawer = document.getElementById("js-drawer-open");
  const btnCloseDrawer = document.getElementById("js-drawer-close");

  const openDrawer = () => {
    drawer.classList.add("mobile-drawer--open");
    drawerOverlay.classList.add("mobile-drawer-overlay--open");
  };

  const closeDrawer = () => {
    drawer.classList.remove("mobile-drawer--open");
    drawerOverlay.classList.remove("mobile-drawer-overlay--open");
  };

  btnOpenDrawer.addEventListener("click", openDrawer);
  btnCloseDrawer.addEventListener("click", closeDrawer);
  drawerOverlay.addEventListener("click", closeDrawer);


  // --- SEARCH AUTOCOMPLETE & RECENT SEARCH LOGIC ---
  const searchInput = document.getElementById("js-search-input");
  const searchSuggestions = document.getElementById("js-search-suggestions");
  const searchForm = document.getElementById("js-search-form");
  const recentSearchesSection = document.getElementById("js-recent-searches-section");
  const recentSearchesList = document.getElementById("js-recent-searches-list");

  // Load and render recent searches
  const getRecentSearches = () => {
    try {
      return JSON.parse(localStorage.getItem("jhd_recent_searches")) || [];
    } catch(e) {
      return [];
    }
  };

  const addRecentSearch = (query) => {
    if (!query || query.trim() === "") return;
    let searches = getRecentSearches();
    searches = searches.filter(item => item.toLowerCase() !== query.toLowerCase()); // remove duplicate
    searches.unshift(query); // add to top
    searches = searches.slice(0, 5); // limit to 5
    localStorage.setItem("jhd_recent_searches", JSON.stringify(searches));
  };

  const renderRecentSearches = () => {
    const searches = getRecentSearches();
    if (searches.length > 0) {
      recentSearchesList.innerHTML = "";
      searches.forEach(search => {
        const li = document.createElement("li");
        li.className = "search-suggestions__item";
        li.setAttribute("data-query", search);
        li.innerHTML = `
          <span class="search-suggestions__icon">⏳</span>
          <span>${search}</span>
        `;
        recentSearchesList.appendChild(li);
      });
      recentSearchesSection.style.display = "block";
    } else {
      recentSearchesSection.style.display = "none";
    }
  };

  // Autocomplete positioning and toggles
  searchInput.addEventListener("focus", () => {
    renderRecentSearches();
    searchSuggestions.style.display = "block";
  });

  // Hide dropdown when clicking outside search bar
  document.addEventListener("click", (e) => {
    if (!e.target.closest(".header-search")) {
      searchSuggestions.style.display = "none";
    }
  });

  // Handle click on suggestions items
  searchSuggestions.addEventListener("click", (e) => {
    const item = e.target.closest(".search-suggestions__item");
    if (item) {
      const query = item.getAttribute("data-query");
      searchInput.value = query;
      addRecentSearch(query);
      searchSuggestions.style.display = "none";
      searchForm.submit();
    }
  });

  searchForm.addEventListener("submit", (e) => {
    const query = searchInput.value.trim();
    if (query !== "") {
      addRecentSearch(query);
    }
  });

});
</script>
