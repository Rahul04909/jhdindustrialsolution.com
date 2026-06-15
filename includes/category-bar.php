<?php
/**
 * JHD Industrial Solution - Category Navigation Bar Component
 * Swipeable category row with high-quality inline SVG icons.
 */
?>

<nav class="category-nav-bar" aria-label="Product Categories Navigation">
  <div class="category-container" id="js-category-container">
    
    <!-- Power Tools -->
    <a href="index.php?category=power-tools" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <polygon points="13 2 3 14 12 14 11 22 21 10 12 10 13 2"></polygon>
        </svg>
      </div>
      <span class="category-label">Power Tools</span>
    </a>

    <!-- Safety Supplies -->
    <a href="index.php?category=safety-supplies" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
        </svg>
      </div>
      <span class="category-label">Safety Gear</span>
    </a>

    <!-- Electrical & Appliances -->
    <a href="index.php?category=electrical" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <rect x="2" y="7" width="20" height="14" rx="2" ry="2"></rect>
          <path d="M6 21V23"></path>
          <path d="M18 21V23"></path>
          <path d="M12 3v4"></path>
          <path d="M12 11h.01"></path>
          <path d="M8 11h.01"></path>
          <path d="M16 11h.01"></path>
        </svg>
      </div>
      <span class="category-label">Electricals</span>
    </a>

    <!-- Office Supplies -->
    <a href="index.php?category=office-supplies" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"></path>
          <polyline points="14 2 14 8 20 8"></polyline>
          <line x1="16" y1="13" x2="8" y2="13"></line>
          <line x1="16" y1="17" x2="8" y2="17"></line>
          <polyline points="10 9 9 9 8 9"></polyline>
        </svg>
      </div>
      <span class="category-label">Office Supplies</span>
    </a>

    <!-- Industrial Tools (Gears / MRO) -->
    <a href="index.php?category=industrial-tools" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <circle cx="12" cy="12" r="3"></circle>
          <path d="M19.4 15a1.65 1.65 0 0 0 .33 1.82l.06.06a2 2 0 1 1-2.83 2.83l-.06-.06a1.65 1.65 0 0 0-1.82-.33 1.65 1.65 0 0 0-1 1.51V21a2 2 0 0 1-4 0v-.09A1.65 1.65 0 0 0 9 19.4a1.65 1.65 0 0 0-1.82.33l-.06.06a2 2 0 1 1-2.83-2.83l.06-.06a1.65 1.65 0 0 0 .33-1.82 1.65 1.65 0 0 0-1.51-1H3a2 2 0 0 1 0-4h.09A1.65 1.65 0 0 0 4.6 9a1.65 1.65 0 0 0-.33-1.82l-.06-.06a2 2 0 1 1 2.83-2.83l.06.06a1.65 1.65 0 0 0 1.82.33H9a1.65 1.65 0 0 0 1-1.51V3a2 2 0 0 1 4 0v.09a1.65 1.65 0 0 0 1 1.51 1.65 1.65 0 0 0 1.82-.33l.06-.06a2 2 0 1 1 2.83 2.83l-.06.06a1.65 1.65 0 0 0-.33 1.82V9a1.65 1.65 0 0 0 1.51 1H21a2 2 0 0 1 0 4h-.09a1.65 1.65 0 0 0-1.51 1z"></path>
        </svg>
      </div>
      <span class="category-label">Industrial MRO</span>
    </a>

    <!-- Pumps & Motors -->
    <a href="index.php?category=pumps-motors" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <ellipse cx="12" cy="5" rx="9" ry="3"></ellipse>
          <path d="M3 5v14c0 1.66 4 3 9 3s9-1.34 9-3V5"></path>
          <path d="M3 12c0 1.66 4 3 9 3s9-1.34 9-3"></path>
        </svg>
      </div>
      <span class="category-label">Pumps &amp; Motors</span>
    </a>

    <!-- Hand Tools -->
    <a href="index.php?category=hand-tools" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"></path>
        </svg>
      </div>
      <span class="category-label">Hand Tools</span>
    </a>

    <!-- Agri & Gardening -->
    <a href="index.php?category=agri-gardening" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M2 22s11.5-2.6 14.5-9.5C18.3 8.3 22 2 22 2s-6.3 3.7-10.5 5.5C4.6 10.5 2 22 2 22z"></path>
          <path d="M12 2A15.3 15.3 0 0 1 22 12"></path>
        </svg>
      </div>
      <span class="category-label">Agri/Gardening</span>
    </a>

    <!-- Medical & Lab Supplies -->
    <a href="index.php?category=medical-lab" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <path d="M10 2v8"></path>
          <path d="M14 2v8"></path>
          <path d="M4.5 10.5h15"></path>
          <path d="M19 10.5L16 21H8L5 10.5"></path>
          <circle cx="12" cy="15" r="1.5"></circle>
        </svg>
      </div>
      <span class="category-label">Medical &amp; Lab</span>
    </a>

    <!-- Fasteners & Hardware -->
    <a href="index.php?category=fasteners" class="category-item">
      <div class="category-image-wrap">
        <svg width="22" height="22" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
          <rect x="3" y="3" width="18" height="4" rx="1"></rect>
          <path d="M12 7v14"></path>
          <path d="M8 11h8"></path>
          <path d="M8 15h8"></path>
          <path d="M10 19h4"></path>
        </svg>
      </div>
      <span class="category-label">Fasteners</span>
    </a>

  </div>
</nav>
