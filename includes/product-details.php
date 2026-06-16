<?php
/**
 * JHD Industrial Solution - Premium B2B Product Details Component
 * 
 * Features:
 * - Dynamic breadcrumbs and image gallery with interactive thumbnail switching and dynamic category hue-rotation.
 * - Video modal overlay.
 * - Dynamic price variations, quantity adjustments, and pincode verification simulator.
 * - B2B bulk enquiry form with submission validation.
 * - Interactive Frequently Bought Together bundle calculator.
 * - Customer review submission form adding reviews client-side.
 * - Fully responsive grid, semantic SEO elements, and sticky bottom bar for mobile viewports.
 */

// Generate related items for Recommended carousel and Frequently Bought Together
$related_products = [];
for ($i = 1; $i <= 5; $i++) {
    if ($i != $index_val) {
        $price = round($basePrice * (0.85 + (($i - 1) * 0.15)));
        $oldPrice = round($price * (1.3 + (($i - 1) * 0.1)));
        $discount = round((($oldPrice - $price) / $oldPrice) * 100);
        $related_products[] = [
            "name" => "{$brand} Premium {$subcat_name} (Model {$i})",
            "price" => $price,
            "oldPrice" => $oldPrice,
            "discount" => $discount,
            "param" => "{$main_cat_key}-{$sub_cat_key}-{$i}"
        ];
    }
}

// Accessories for cross-selling bundle
$acc_names = [
    "power-tools" => ["Safety Goggles Pro", "Drill Bit Set (13 Pcs)"],
    "safety-supplies" => ["High-Vis Reflective Vest", "Nitrile Coated Work Gloves"],
    "electrical" => ["PVC Insulation Tape Roll", "Heavy-Duty Cable Ties (100 Pcs)"],
    "office-supplies" => ["A4 Copier Paper (500 Sheets)", "Desktop Calculator 12-Digit"],
    "industrial-tools" => ["Anti-Rust WD-40 Spray (400ml)", "Threadlocker Adhesive (50ml)"],
    "pumps-motors" => ["Digital Pump Controller", "Heavy-Duty Brass Foot Valve"],
    "hand-tools" => ["Adjustable Wrench 10-Inch", "Heavy-Duty Combination Plier"],
    "agri-gardening" => ["Pressure Spray Pump 2L", "Premium Garden Hose 15m"],
    "medical-lab" => ["Digital Thermometer", "Disposable Nitrile Gloves (100 Pcs)"],
    "fasteners" => ["Stainless Steel Washer Pack", "Alloy Socket Screws (50 Pcs)"]
];
$acc1_name = isset($acc_names[$main_cat_key][0]) ? $acc_names[$main_cat_key][0] : "Industrial Accessory A";
$acc2_name = isset($acc_names[$main_cat_key][1]) ? $acc_names[$main_cat_key][1] : "Industrial Accessory B";
$acc1_price = round($basePrice * 0.15) + 99;
$acc2_price = round($basePrice * 0.25) + 149;
?>

<div class="product-page-wrapper">
  <!-- Breadcrumbs -->
  <div class="breadcrumbs-container">
    <a href="index.php" class="breadcrumb-link">Home</a>
    <span class="breadcrumb-separator">/</span>
    <a href="index.php?category=<?php echo $main_cat_key; ?>" class="breadcrumb-link"><?php echo htmlspecialchars($product['category']); ?></a>
    <span class="breadcrumb-separator">/</span>
    <span class="breadcrumb-link breadcrumb-link--sub"><?php echo htmlspecialchars($product['subcategory']); ?></span>
    <span class="breadcrumb-separator">/</span>
    <span class="breadcrumb-current"><?php echo htmlspecialchars($product['name']); ?></span>
  </div>

  <main class="product-main-grid">
    <!-- Left Column: Gallery -->
    <div class="product-gallery-card">
      <div class="gallery-main-viewport">
        <!-- Badge -->
        <span class="gallery-badge">Best Seller</span>
        
        <!-- Main Product Image -->
        <img 
          id="js-main-product-image" 
          class="gallery-main-img" 
          src="assets/images/products/exide_inverter.jpg" 
          alt="<?php echo htmlspecialchars($product['name']); ?>"
          style="filter: hue-rotate(<?php echo ($product['price'] % 360); ?>deg);"
        >
        
        <!-- Video Modal Launcher Overlay -->
        <div class="video-overlay-trigger" onclick="openVideoModal()">
          <span class="video-play-btn">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="currentColor">
              <path d="M8 5v14l11-7z"/>
            </svg>
          </span>
          <span class="video-trigger-text">Watch Product Guide</span>
        </div>
      </div>

      <!-- Thumbnail Strip -->
      <div class="gallery-thumbnail-strip">
        <div class="thumb-item thumb-item--active" onclick="switchMainImage(this, 'assets/images/products/exide_inverter.jpg', false)">
          <img src="assets/images/products/exide_inverter.jpg" alt="View 1" style="filter: hue-rotate(<?php echo ($product['price'] % 360); ?>deg);">
        </div>
        <div class="thumb-item" onclick="switchMainImage(this, 'assets/images/products/exide_inverter.jpg', false)">
          <img src="assets/images/products/exide_inverter.jpg" alt="View 2" style="filter: hue-rotate(<?php echo (($product['price'] + 45) % 360); ?>deg);">
        </div>
        <div class="thumb-item" onclick="switchMainImage(this, 'assets/images/products/exide_inverter.jpg', false)">
          <img src="assets/images/products/exide_inverter.jpg" alt="View 3" style="filter: hue-rotate(<?php echo (($product['price'] + 90) % 360); ?>deg);">
        </div>
        <div class="thumb-item thumb-item--video" onclick="openVideoModal()">
          <img src="assets/images/products/exide_inverter.jpg" alt="Watch Video" style="opacity: 0.6;">
          <div class="thumb-video-icon">
            <svg width="18" height="18" viewBox="0 0 24 24" fill="currentColor">
              <path d="M8 5v14l11-7z"/>
            </svg>
          </div>
        </div>
      </div>
    </div>

    <!-- Right Column: Detail Block -->
    <div class="product-details-card">
      <div class="details-header">
        <a href="#" class="details-brand-link"><?php echo htmlspecialchars($product['brand']); ?> Store</a>
        <h1 class="details-product-title"><?php echo htmlspecialchars($product['name']); ?></h1>
        
        <div class="details-rating-row">
          <div class="rating-badge-star"><?php echo $product['rating']; ?> ★</div>
          <span class="rating-count-link"><?php echo $product['reviews']; ?> Ratings &amp; Reviews</span>
          <span class="details-stock-status">In Stock</span>
        </div>
      </div>

      <!-- Price Block -->
      <div class="details-price-block">
        <div class="price-row-main">
          <span class="price-offer" id="js-product-offer-price">₹<?php echo number_format($product['price']); ?></span>
          <span class="price-mrp" id="js-product-mrp-price">₹<?php echo number_format($product['oldPrice']); ?></span>
          <span class="price-discount-badge" id="js-product-discount-badge"><?php echo $product['discount']; ?>% OFF</span>
        </div>
        <p class="price-gst-notice">Prices are inclusive of GST (GST Invoice available at checkout)</p>
      </div>

      <!-- Variation Selector Widget -->
      <div class="details-variation-widget">
        <h3 class="variation-title">Select Pack Options:</h3>
        <div class="variation-options-grid">
          <button class="variation-btn variation-btn--active" onclick="selectVariation(this, 1, <?php echo $product['price']; ?>, <?php echo $product['oldPrice']; ?>, <?php echo $product['discount']; ?>)">
            <span class="variation-label">Single Pack</span>
            <span class="variation-price">₹<?php echo number_format($product['price']); ?></span>
          </button>
          <button class="variation-btn" onclick="selectVariation(this, 2, <?php echo round($product['price'] * 1.9); ?>, <?php echo round($product['oldPrice'] * 2); ?>, <?php echo round((($product['oldPrice'] * 2 - $product['price'] * 1.9) / ($product['oldPrice'] * 2)) * 100); ?>)">
            <span class="variation-label">Pack of 2 (Save 5%)</span>
            <span class="variation-price">₹<?php echo number_format(round($product['price'] * 1.9)); ?></span>
          </button>
          <button class="variation-btn" onclick="selectVariation(this, 5, <?php echo round($product['price'] * 4.5); ?>, <?php echo round($product['oldPrice'] * 5); ?>, <?php echo round((($product['oldPrice'] * 5 - $product['price'] * 4.5) / ($product['oldPrice'] * 5)) * 100); ?>)">
            <span class="variation-label">Pack of 5 (Save 10%)</span>
            <span class="variation-price">₹<?php echo number_format(round($product['price'] * 4.5)); ?></span>
          </button>
        </div>
      </div>

      <!-- Pincode / Shipping Delivery Checker -->
      <div class="details-pincode-widget">
        <h3 class="pincode-title">Check Delivery Estimates:</h3>
        <div class="pincode-input-wrap">
          <input type="text" id="js-pincode-input" class="pincode-input-box" placeholder="Enter 6-digit Pincode" maxlength="6" oninput="this.value = this.value.replace(/[^0-9]/g, '')">
          <button class="pincode-check-btn" onclick="verifyPincode()">Check</button>
        </div>
        <div id="js-pincode-result-msg" class="pincode-result-message">Enter your pincode to check delivery dates.</div>
      </div>

      <!-- Action Panel (Qty & Purchase Buttons) -->
      <div class="details-action-panel">
        <div class="qty-selector-wrap">
          <button class="qty-btn" onclick="adjustQty(-1)">-</button>
          <input type="text" id="js-qty-input" class="qty-input-field" value="1" readonly>
          <button class="qty-btn" onclick="adjustQty(1)">+</button>
        </div>
        <button class="action-btn action-btn--cart" onclick="triggerAddToCart()">
          <svg class="btn-icon" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
            <circle cx="9" cy="21" r="1"></circle>
            <circle cx="20" cy="21" r="1"></circle>
            <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
          </svg>
          Add to Cart
        </button>
        <button class="action-btn action-btn--buy" onclick="triggerBuyNow()">
          Buy Now
        </button>
      </div>

      <!-- Trust Badges -->
      <div class="trust-badges-strip">
        <div class="trust-badge-item">
          <span class="trust-badge-icon">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
              <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/>
            </svg>
          </span>
          <span class="trust-badge-label">100% Genuine</span>
        </div>
        <div class="trust-badge-item">
          <span class="trust-badge-icon">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
              <path d="M21.5 2v6h-6M21.34 15.57a10 10 0 1 1-.57-8.38l5.67-5.67"/>
            </svg>
          </span>
          <span class="trust-badge-label">Easy Returns</span>
        </div>
        <div class="trust-badge-item">
          <span class="trust-badge-icon">
            <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
              <rect x="3" y="11" width="18" height="11" rx="2" ry="2"></rect>
              <path d="M7 11V7a5 5 0 0 1 10 0v4"></path>
            </svg>
          </span>
          <span class="trust-badge-label">Secure Payment</span>
        </div>
      </div>
    </div>
  </main>

  <!-- B2B Bulk Enquiry Section -->
  <section class="b2b-enquiry-section">
    <div class="b2b-card-grid">
      <div class="b2b-info-panel">
        <h2 class="b2b-section-title">Corporate B2B Custom Quotes</h2>
        <p class="b2b-section-desc">Are you planning a bulk commercial order? JHD Industrial Solution offers dedicated account managers, bulk quantity discounts, and custom shipping timelines for corporate clients. Submit your enquiry below to receive an official proforma invoice and specialized B2B pricing within 2 hours.</p>
        <div class="b2b-bullets-list">
          <div class="b2b-bullet-item">
            <span class="b2b-bullet-check">✓</span>
            <span>Dedicated Account Managers</span>
          </div>
          <div class="b2b-bullet-item">
            <span class="b2b-bullet-check">✓</span>
            <span>Flexible payment models (credit lines)</span>
          </div>
          <div class="b2b-bullet-item">
            <span class="b2b-bullet-check">✓</span>
            <span>GST input tax credit assistance</span>
          </div>
        </div>
      </div>
      <div class="b2b-form-panel">
        <h3 class="b2b-form-title">Request Bulk Price Quote</h3>
        <form id="js-b2b-enquiry-form" onsubmit="submitB2bEnquiry(event)">
          <div class="form-row-two">
            <div class="form-group">
              <label class="form-label" for="b2b-name">Your Name *</label>
              <input type="text" id="b2b-name" class="form-input" required>
            </div>
            <div class="form-group">
              <label class="form-label" for="b2b-email">Corporate Email *</label>
              <input type="email" id="b2b-email" class="form-input" required>
            </div>
          </div>
          <div class="form-row-two">
            <div class="form-group">
              <label class="form-label" for="b2b-phone">Phone Number *</label>
              <input type="tel" id="b2b-phone" class="form-input" pattern="[0-9]{10}" placeholder="10-digit number" required>
            </div>
            <div class="form-group">
              <label class="form-label" for="b2b-qty">Target Quantity *</label>
              <input type="number" id="b2b-qty" class="form-input" min="10" placeholder="Minimum 10 units" required>
            </div>
          </div>
          <div class="form-group">
            <label class="form-label" for="b2b-msg">Specify Requirements / Delivery Instructions</label>
            <textarea id="b2b-msg" class="form-textarea" rows="3" placeholder="State standard delivery details, shipping specifications, or custom requirements here..."></textarea>
          </div>
          <button type="submit" class="b2b-submit-btn">Submit RFQ Request</button>
        </form>
        <div id="js-b2b-success-alert" class="b2b-success-toast">
          <strong>✓ Quote Request Submitted!</strong> Our corporate team will reach out with a custom proforma pricing proposal shortly.
        </div>
      </div>
    </div>
  </section>

  <!-- Technical Specifications Table -->
  <section class="product-specs-section">
    <h2 class="specs-section-title">Technical Specifications</h2>
    <div class="specs-table-wrapper">
      <table class="specs-table">
        <tbody>
          <?php foreach ($product['specifications'] as $key => $value): ?>
            <tr>
              <td class="spec-label"><?php echo htmlspecialchars($key); ?></td>
              <td class="spec-value"><?php echo htmlspecialchars($value); ?></td>
            </tr>
          <?php endforeach; ?>
        </tbody>
      </table>
    </div>
  </section>

  <!-- Description Section -->
  <section class="product-description-section">
    <h2 class="desc-section-title">Product Description</h2>
    <div class="desc-content-block">
      <p class="desc-paragraph"><?php echo htmlspecialchars($product['description']); ?></p>
      <p class="desc-paragraph">Engineered to excel under industrial conditions, it incorporates micro-controller based structural support and temperature thresholds, limiting wear-and-tear during intense usage cycles. The ergonomic design elements reduce user exhaustion, promoting productivity gains across production line work schedules. Ideal for manufacturing plants, infrastructure projects, workshops, and commercial construction projects.</p>
    </div>
  </section>

  <!-- Frequently Bought Together Cross-sell Widget -->
  <section class="cross-sell-bundle-section">
    <h2 class="bundle-section-title">Frequently Bought Together</h2>
    <div class="bundle-box-wrapper">
      <div class="bundle-items-flex">
        <!-- Item 1 (Current Product) -->
        <div class="bundle-item-card">
          <div class="bundle-item-checkbox-row">
            <input type="checkbox" id="bundle-check-1" class="js-bundle-checkbox" data-price="<?php echo $product['price']; ?>" checked disabled>
            <label for="bundle-check-1" class="bundle-item-title"><?php echo htmlspecialchars($product['name']); ?></label>
          </div>
          <div class="bundle-item-info">
            <img class="bundle-item-img" src="assets/images/products/exide_inverter.jpg" alt="Current" style="filter: hue-rotate(<?php echo ($product['price'] % 360); ?>deg);">
            <span class="bundle-item-price">₹<?php echo number_format($product['price']); ?></span>
          </div>
        </div>

        <span class="bundle-operator">+</span>

        <!-- Item 2 (Accessory 1) -->
        <div class="bundle-item-card">
          <div class="bundle-item-checkbox-row">
            <input type="checkbox" id="bundle-check-2" class="js-bundle-checkbox" data-price="<?php echo $acc1_price; ?>" checked onchange="updateBundleTotal()">
            <label for="bundle-check-2" class="bundle-item-title"><?php echo htmlspecialchars($acc1_name); ?></label>
          </div>
          <div class="bundle-item-info">
            <div class="bundle-item-img-placeholder">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M12 2v20M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"></path>
              </svg>
            </div>
            <span class="bundle-item-price">₹<?php echo number_format($acc1_price); ?></span>
          </div>
        </div>

        <span class="bundle-operator">+</span>

        <!-- Item 3 (Accessory 2) -->
        <div class="bundle-item-card">
          <div class="bundle-item-checkbox-row">
            <input type="checkbox" id="bundle-check-3" class="js-bundle-checkbox" data-price="<?php echo $acc2_price; ?>" checked onchange="updateBundleTotal()">
            <label for="bundle-check-3" class="bundle-item-title"><?php echo htmlspecialchars($acc2_name); ?></label>
          </div>
          <div class="bundle-item-info">
            <div class="bundle-item-img-placeholder">
              <svg width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2">
                <path d="M14.7 6.3a1 1 0 0 0 0 1.4l1.6 1.6a1 1 0 0 0 1.4 0l3.77-3.77a6 6 0 0 1-7.94 7.94l-6.91 6.91a2.12 2.12 0 0 1-3-3l6.91-6.91a6 6 0 0 1 7.94-7.94l-3.76 3.76z"></path>
              </svg>
            </div>
            <span class="bundle-item-price">₹<?php echo number_format($acc2_price); ?></span>
          </div>
        </div>
      </div>

      <!-- Bundle Total and Action -->
      <div class="bundle-summary-panel">
        <div class="bundle-total-label">Total Price: <span class="bundle-total-val" id="js-bundle-total-price">₹<?php echo number_format($product['price'] + $acc1_price + $acc2_price); ?></span></div>
        <button class="bundle-buy-btn" onclick="addBundleToCart()">Add Selected to Cart</button>
      </div>
    </div>
  </section>

  <!-- Customer Ratings & Reviews Section -->
  <section class="customer-reviews-section">
    <h2 class="reviews-section-title">Customer Ratings &amp; Reviews</h2>
    <div class="reviews-layout-grid">
      <!-- Ratings Column -->
      <div class="reviews-summary-column">
        <div class="overall-rating-card">
          <div class="overall-number"><?php echo $product['rating']; ?></div>
          <div class="overall-star-row">★★★★★</div>
          <div class="overall-desc">Based on <?php echo $product['reviews']; ?> customer reviews</div>
        </div>
        <!-- Progress Bars -->
        <div class="rating-progress-block">
          <div class="progress-bar-row">
            <span class="progress-label">5 Star</span>
            <div class="progress-track">
              <div class="progress-fill" style="width: 70%; background-color: #10b981;"></div>
            </div>
            <span class="progress-percentage">70%</span>
          </div>
          <div class="progress-bar-row">
            <span class="progress-label">4 Star</span>
            <div class="progress-track">
              <div class="progress-fill" style="width: 20%; background-color: #10b981;"></div>
            </div>
            <span class="progress-percentage">20%</span>
          </div>
          <div class="progress-bar-row">
            <span class="progress-label">3 Star</span>
            <div class="progress-track">
              <div class="progress-fill" style="width: 6%; background-color: #f59e0b;"></div>
            </div>
            <span class="progress-percentage">6%</span>
          </div>
          <div class="progress-bar-row">
            <span class="progress-label">2 Star</span>
            <div class="progress-track">
              <div class="progress-fill" style="width: 3%; background-color: #f59e0b;"></div>
            </div>
            <span class="progress-percentage">3%</span>
          </div>
          <div class="progress-bar-row">
            <span class="progress-label">1 Star</span>
            <div class="progress-track">
              <div class="progress-fill" style="width: 1%; background-color: #ef4444;"></div>
            </div>
            <span class="progress-percentage">1%</span>
          </div>
        </div>
      </div>

      <!-- Reviews Column -->
      <div class="reviews-list-column">
        <h3 class="reviews-sub-title">Recent Feedbacks</h3>
        
        <!-- Interactive container where new reviews append -->
        <div id="js-reviews-container" class="reviews-list-container">
          <div class="review-item">
            <div class="review-item-header">
              <div class="review-badge-star">5 ★</div>
              <span class="review-author">Anil Sharma</span>
              <span class="review-date">12 June 2026</span>
            </div>
            <strong class="review-headline">Extremely reliable product!</strong>
            <p class="review-text">Procured 20 units of this model for our assembly shop. Performance is excellent and delivery was within 3 days. Highly recommend JHD Industrial Solution for corporate purchases.</p>
          </div>
          <div class="review-item">
            <div class="review-item-header">
              <div class="review-badge-star">4 ★</div>
              <span class="review-author">Rakesh Gupta</span>
              <span class="review-date">08 June 2026</span>
            </div>
            <strong class="review-headline">Great price-to-performance ratio</strong>
            <p class="review-text">Satisfied with the build quality. The variations list let us pick exactly the right bundle we needed. Got GST invoice directly in my account panel.</p>
          </div>
        </div>

        <!-- Write a Review Form -->
        <div class="write-review-form-block">
          <h4 class="write-review-title">Write a Customer Review</h4>
          <form id="js-review-submit-form" onsubmit="submitProductReview(event)">
            <div class="form-group">
              <label class="form-label">Select Star Rating *</label>
              <div class="star-rating-select-row">
                <input type="radio" id="star5" name="review_stars" value="5" checked><label for="star5">5 ★</label>
                <input type="radio" id="star4" name="review_stars" value="4"><label for="star4">4 ★</label>
                <input type="radio" id="star3" name="review_stars" value="3"><label for="star3">3 ★</label>
                <input type="radio" id="star2" name="review_stars" value="2"><label for="star2">2 ★</label>
                <input type="radio" id="star1" name="review_stars" value="1"><label for="star1">1 ★</label>
              </div>
            </div>
            <div class="form-group">
              <label class="form-label" for="review-title">Review Headline *</label>
              <input type="text" id="review-title" class="form-input" placeholder="e.g. Excellent Product, Fast delivery" required>
            </div>
            <div class="form-group">
              <label class="form-label" for="review-comment">Review Description *</label>
              <textarea id="review-comment" class="form-textarea" rows="3" placeholder="Tell us about your experience using the product..." required></textarea>
            </div>
            <div class="form-row-two">
              <div class="form-group">
                <label class="form-label" for="review-name">Your Display Name *</label>
                <input type="text" id="review-name" class="form-input" required>
              </div>
              <button type="submit" class="review-submit-btn">Submit Review</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </section>

  <!-- Recommended Products Carousel Shelf -->
  <section class="recommended-products-section">
    <h2 class="recommended-section-title">Customers Also Bought</h2>
    <div class="recommended-carousel-wrapper">
      <div class="recommended-carousel-track">
        <?php foreach ($related_products as $rel): ?>
          <div class="recommended-product-card" onclick="window.location.href='index.php?product=<?php echo $rel['param']; ?>'">
            <div class="rec-img-wrap">
              <img class="rec-img" src="assets/images/products/exide_inverter.jpg" alt="<?php echo htmlspecialchars($rel['name']); ?>" style="filter: hue-rotate(<?php echo ($rel['price'] % 360); ?>deg);">
            </div>
            <div class="rec-details-wrap">
              <h4 class="rec-title"><?php echo htmlspecialchars($rel['name']); ?></h4>
              <div class="rec-price-row">
                <span class="rec-curr-price">₹<?php echo number_format($rel['price']); ?></span>
                <span class="rec-old-price">₹<?php echo number_format($rel['oldPrice']); ?></span>
                <span class="rec-discount"><?php echo $rel['discount']; ?>% OFF</span>
              </div>
            </div>
          </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>
</div>

<!-- Mobile Sticky Bottom Action Bar -->
<div class="mobile-sticky-action-bar">
  <div class="sticky-bar-content">
    <button class="sticky-action-btn sticky-action-btn--cart" onclick="triggerAddToCart()">Add to Cart</button>
    <button class="sticky-action-btn sticky-action-btn--buy" onclick="triggerBuyNow()">Buy Now</button>
  </div>
</div>

<!-- Video Modal Player Screen Overlay -->
<div id="js-video-modal" class="video-modal-screen" onclick="closeVideoModal()">
  <div class="video-modal-content" onclick="event.stopPropagation()">
    <div class="video-modal-header">
      <h3 class="video-modal-title">Product Demonstration Video</h3>
      <span class="video-modal-close" onclick="closeVideoModal()">&times;</span>
    </div>
    <div class="video-modal-body">
      <!-- High-fidelity mock youtube video container -->
      <div class="mock-youtube-container">
        <div class="mock-yt-thumbnail" id="js-mock-yt-thumbnail">
          <img class="mock-yt-bg" src="assets/images/products/exide_inverter.jpg" alt="Video cover" style="filter: hue-rotate(<?php echo ($product['price'] % 360); ?>deg) brightness(0.6);">
          <div class="mock-yt-center-play" onclick="playMockVideo(event)">
            <svg width="48" height="48" viewBox="0 0 24 24" fill="#ffffff">
              <path d="M8 5v14l11-7z"/>
            </svg>
            <span class="mock-yt-play-label">Play Guide</span>
          </div>
        </div>
        <div class="mock-video-playing-layer" id="js-mock-video-playing-layer">
          <div class="mock-video-player-simulation">
            <div class="mock-video-progress-bar">
              <div class="mock-video-progress-fill" id="js-mock-video-fill"></div>
            </div>
            <div class="mock-video-controls">
              <span class="mock-ctrl-btn" onclick="togglePlayMockVideo()">⏸ Play/Pause</span>
              <span class="mock-ctrl-timer" id="js-mock-video-timer">00:00 / 02:30</span>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<!-- Inline JavaScript Logic for details widgets -->
<script>
// Dynamic variation pricing
let currentPrice = <?php echo $product['price']; ?>;
let currentQty = 1;

function switchMainImage(thumbEl, imgSrc, isVideo) {
  // Update thumb-active class
  const thumbs = document.querySelectorAll('.gallery-thumbnail-strip .thumb-item');
  thumbs.forEach(t => t.classList.remove('thumb-item--active'));
  thumbEl.classList.add('thumb-item--active');
  
  if (isVideo) {
    openVideoModal();
    return;
  }
  
  // Set main image src and styles
  const mainImg = document.getElementById('js-main-product-image');
  if (mainImg) {
    mainImg.src = imgSrc;
    // Extract thumbnail image style to preserve correct hue rotation filter
    const thumbImg = thumbEl.querySelector('img');
    if (thumbImg) {
      mainImg.style.filter = thumbImg.style.filter;
    }
  }
}

function selectVariation(btnEl, packQty, packPrice, oldPrice, discount) {
  // Set button active status
  const btns = document.querySelectorAll('.variation-options-grid .variation-btn');
  btns.forEach(b => b.classList.remove('variation-btn--active'));
  btnEl.classList.add('variation-btn--active');
  
  // Update displayed prices
  currentPrice = packPrice;
  
  const offerPriceEl = document.getElementById('js-product-offer-price');
  const mrpPriceEl = document.getElementById('js-product-mrp-price');
  const discountEl = document.getElementById('js-product-discount-badge');
  
  if (offerPriceEl) offerPriceEl.textContent = '₹' + packPrice.toLocaleString('en-IN');
  if (mrpPriceEl) mrpPriceEl.textContent = '₹' + oldPrice.toLocaleString('en-IN');
  if (discountEl) discountEl.textContent = discount + '% OFF';
  
  // Update Frequently Bought Together primary item price and overall bundle total
  const bundleCheck1 = document.getElementById('bundle-check-1');
  if (bundleCheck1) {
    bundleCheck1.setAttribute('data-price', packPrice);
    const bundleTitleLabel = document.querySelector('label[for="bundle-check-1"]');
    if (bundleTitleLabel) {
      bundleTitleLabel.textContent = "<?php echo htmlspecialchars($product['name']); ?> (Pack of " + packQty + ")";
    }
    const bundlePriceLabel = bundleCheck1.closest('.bundle-item-card').querySelector('.bundle-item-price');
    if (bundlePriceLabel) {
      bundlePriceLabel.textContent = '₹' + packPrice.toLocaleString('en-IN');
    }
    updateBundleTotal();
  }
}

function verifyPincode() {
  const pinInput = document.getElementById('js-pincode-input');
  const resultMsg = document.getElementById('js-pincode-result-msg');
  
  if (!pinInput || !resultMsg) return;
  
  const code = pinInput.value.trim();
  if (code.length !== 6) {
    resultMsg.textContent = "Please enter a valid 6-digit pincode.";
    resultMsg.className = "pincode-result-message pincode-result-message--error";
    return;
  }
  
  // Standard simulation logic
  if (code.startsWith('11') || code.startsWith('12') || code.startsWith('13')) {
    resultMsg.textContent = "✓ Delivery by Friday, 19th June. Fast shipping available for this location.";
    resultMsg.className = "pincode-result-message pincode-result-message--success";
  } else {
    resultMsg.textContent = "✓ Standard Delivery within 3-5 days. Cash on delivery eligible.";
    resultMsg.className = "pincode-result-message pincode-result-message--success";
  }
}

function adjustQty(amount) {
  const qtyInput = document.getElementById('js-qty-input');
  if (!qtyInput) return;
  
  let val = parseInt(qtyInput.value) || 1;
  val += amount;
  if (val < 1) val = 1;
  qtyInput.value = val;
  currentQty = val;
}

function triggerAddToCart() {
  const totalCost = currentPrice * currentQty;
  alert('Added ' + currentQty + ' unit(s) to Cart. (Total: ₹' + totalCost.toLocaleString('en-IN') + ')');
  // Update header cart badge if element is loaded
  const badge = document.querySelector('.cart-badge');
  if (badge) {
    let currentBadgeCount = parseInt(badge.textContent) || 0;
    badge.textContent = currentBadgeCount + currentQty;
  }
}

function triggerBuyNow() {
  const totalCost = currentPrice * currentQty;
  alert('Proceeding to checkout with ' + currentQty + ' units. (Price: ₹' + totalCost.toLocaleString('en-IN') + ')');
}

// B2B Enquiry Submission
function submitB2bEnquiry(e) {
  e.preventDefault();
  const name = document.getElementById('b2b-name').value;
  const email = document.getElementById('b2b-email').value;
  const phone = document.getElementById('b2b-phone').value;
  const qty = document.getElementById('b2b-qty').value;
  
  if (!name || !email || !phone || !qty) return;
  
  const form = document.getElementById('js-b2b-enquiry-form');
  const alertBox = document.getElementById('js-b2b-success-alert');
  
  if (form && alertBox) {
    form.style.display = 'none';
    alertBox.style.display = 'block';
  }
}

// Frequently Bought Together calculator
function updateBundleTotal() {
  const checkboxes = document.querySelectorAll('.js-bundle-checkbox');
  const totalEl = document.getElementById('js-bundle-total-price');
  if (!checkboxes || !totalEl) return;
  
  let total = 0;
  checkboxes.forEach(cb => {
    if (cb.checked) {
      total += parseInt(cb.getAttribute('data-price')) || 0;
    }
  });
  
  totalEl.textContent = '₹' + total.toLocaleString('en-IN');
}

function addBundleToCart() {
  const checkboxes = document.querySelectorAll('.js-bundle-checkbox');
  let itemsCount = 0;
  let totalPrice = 0;
  
  checkboxes.forEach(cb => {
    if (cb.checked) {
      itemsCount++;
      totalPrice += parseInt(cb.getAttribute('data-price')) || 0;
    }
  });
  
  alert('Successfully added ' + itemsCount + ' items to your cart! (Bundle Total: ₹' + totalPrice.toLocaleString('en-IN') + ')');
  const badge = document.querySelector('.cart-badge');
  if (badge) {
    let currentBadgeCount = parseInt(badge.textContent) || 0;
    badge.textContent = currentBadgeCount + itemsCount;
  }
}

// Interactive Review submittals
function submitProductReview(e) {
  e.preventDefault();
  
  const starsEl = document.querySelector('input[name="review_stars"]:checked');
  const title = document.getElementById('review-title').value.trim();
  const comment = document.getElementById('review-comment').value.trim();
  const name = document.getElementById('review-name').value.trim();
  
  if (!starsEl || !title || !comment || !name) return;
  
  const stars = starsEl.value;
  
  // Format today's date
  const options = { day: 'numeric', month: 'long', year: 'numeric' };
  const formattedDate = new Date().toLocaleDateString('en-US', options);
  
  const reviewContainer = document.getElementById('js-reviews-container');
  if (reviewContainer) {
    const newReview = document.createElement('div');
    newReview.className = 'review-item review-item--new';
    newReview.style.opacity = '0';
    newReview.style.transform = 'translateY(-10px)';
    newReview.style.transition = 'all 0.4s ease';
    
    newReview.innerHTML = `
      <div class="review-item-header">
        <div class="review-badge-star" style="background-color: #10b981;">${stars} ★</div>
        <span class="review-author">${htmlspecialchars_js(name)}</span>
        <span class="review-date">${formattedDate}</span>
      </div>
      <strong class="review-headline">${htmlspecialchars_js(title)}</strong>
      <p class="review-text">${htmlspecialchars_js(comment)}</p>
    `;
    
    reviewContainer.insertBefore(newReview, reviewContainer.firstChild);
    
    // Smooth fade-in
    setTimeout(() => {
      newReview.style.opacity = '1';
      newReview.style.transform = 'translateY(0)';
    }, 50);
  }
  
  // Reset form
  document.getElementById('js-review-submit-form').reset();
  alert('Thank you! Your feedback review has been submitted and posted successfully.');
}

function htmlspecialchars_js(str) {
  return str
    .replace(/&/g, "&amp;")
    .replace(/</g, "&lt;")
    .replace(/>/g, "&gt;")
    .replace(/"/g, "&quot;")
    .replace(/'/g, "&#039;");
}

// Video overlay controls
let videoTimerInterval = null;
let videoDurationSeconds = 150; // 2:30 minutes
let videoCurrentSeconds = 0;
let isVideoPlaying = false;

function openVideoModal() {
  const modal = document.getElementById('js-video-modal');
  if (modal) {
    modal.classList.add('video-modal-screen--open');
    document.body.style.overflow = 'hidden';
  }
}

function closeVideoModal() {
  const modal = document.getElementById('js-video-modal');
  if (modal) {
    modal.classList.remove('video-modal-screen--open');
    document.body.style.overflow = '';
    pauseMockVideo();
  }
}

function playMockVideo(e) {
  e.stopPropagation();
  const thumb = document.getElementById('js-mock-yt-thumbnail');
  const playingLayer = document.getElementById('js-mock-video-playing-layer');
  
  if (thumb && playingLayer) {
    thumb.style.display = 'none';
    playingLayer.style.display = 'flex';
    startMockPlayback();
  }
}

function startMockPlayback() {
  isVideoPlaying = true;
  videoTimerInterval = setInterval(() => {
    if (isVideoPlaying) {
      videoCurrentSeconds++;
      if (videoCurrentSeconds >= videoDurationSeconds) {
        videoCurrentSeconds = 0;
      }
      updateVideoProgressUI();
    }
  }, 1000);
}

function pauseMockVideo() {
  isVideoPlaying = false;
  clearInterval(videoTimerInterval);
}

function togglePlayMockVideo() {
  const playBtn = document.querySelector('.mock-ctrl-btn');
  if (isVideoPlaying) {
    pauseMockVideo();
    if (playBtn) playBtn.textContent = '▶ Play';
  } else {
    isVideoPlaying = true;
    startMockPlayback();
    if (playBtn) playBtn.textContent = '⏸ Pause';
  }
}

function updateVideoProgressUI() {
  const fill = document.getElementById('js-mock-video-fill');
  const timer = document.getElementById('js-mock-video-timer');
  if (!fill || !timer) return;
  
  const percent = (videoCurrentSeconds / videoDurationSeconds) * 100;
  fill.style.width = percent + '%';
  
  const curMin = Math.floor(videoCurrentSeconds / 60).toString().padStart(2, '0');
  const curSec = (videoCurrentSeconds % 60).toString().padStart(2, '0');
  const durMin = Math.floor(videoDurationSeconds / 60).toString().padStart(2, '0');
  const durSec = (videoDurationSeconds % 60).toString().padStart(2, '0');
  
  timer.textContent = `${curMin}:${curSec} / ${durMin}:${durSec}`;
}
</script>
