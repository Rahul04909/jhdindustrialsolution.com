<?php
/**
 * JHD Industrial Solution - Category Products Component
 * Renders multiple B2B shelves dynamically (5 initially, loading 5 more).
 * Each shelf contains:
 *  - Title and View All button
 *  - Top Brands carousel (left)
 *  - Subcategories carousel (right)
 *  - 5-column product grid (bottom) showing products of the active subcategory
 */
?>

<!-- Container where the shelves will be rendered dynamically -->
<div id="js-category-shelves-container"></div>

<!-- Load More Row -->
<div class="load-more-row" id="js-load-more-row">
  <button class="load-more-btn" id="js-load-more-btn" onclick="loadMoreShelves()">Load More Categories</button>
</div>

<script>
// Brands pool for all 10 main categories
const BRANDS_POOL = {
  "power-tools": ["Bosch", "Dewalt", "Makita", "Stanley", "Black & Decker", "Foster", "Ibell", "Yuri", "HiMax", "King", "Eastman", "Jakmister"],
  "safety-supplies": ["3M", "Karam", "Allen Cooper", "Honeywell", "Mallcom", "Liberty", "Bata", "Safari", "Hillson", "ACME", "King's", "Vaultex"],
  "electrical": ["FAB", "CabONE", "Fabgold", "Polyflex", "Havells", "Schneider", "Microtek", "Anchor", "L&T", "KEI", "Finolex", "V-Guard"],
  "office-supplies": ["Kores", "Casio", "Kangaro", "Nataraj", "Apsara", "Reynolds", "Parker", "Pilot", "Double A", "JK Paper", "Fellowes", "Solo"],
  "industrial-tools": ["Loctite", "WD-40", "Pidilite", "M-Seal", "Fevicol", "Taparia", "Venus", "SKF", "Fag", "NBC", "Goodyear", "Fenner"],
  "pumps-motors": ["Kirloskar", "Crompton", "Texmo", "CRI", "V-Guard", "Havells", "Lubi", "Taro", "Oswal", "Falcon", "Sameer", "KSB"],
  "hand-tools": ["Taparia", "Stanley", "Eastman", "Jon Bhandari", "Yuri", "Groz", "Venus", "Ajay", "Ambika", "Pye", "Foster", "Bosch"],
  "agri-gardening": ["Neptune", "Kisan Kraft", "Falcon", "STIHL", "Sharpex", "Kraft Seeds", "Wolf Garten", "Hitachi", "Honda", "Balwaan", "Green Gold", "TrustBasket"],
  "medical-lab": ["Omron", "Dr. Trust", "Beurer", "Philips", "Borosil", "Tarsons", "HiMedia", "3M Littmann", "Thermofisher", "SD Biosensor", "Rossmax", "Romsons"],
  "fasteners": ["TVS", "Unbrako", "LPS", "Pooja", "Apex", "Kundan", "Sterling", "Boltas", "Hilti", "Fischer", "Rawlplug", "Bosch"]
};

// Subcategories names and specifications
const SUBCATEGORIES_DATA = {
  "power-tools": [
    { key: "drills", name: "Drill Machines", spec: "Impact Drill, Heavy Duty, Variable Speed" },
    { key: "grinders", name: "Angle Grinders", spec: "100mm, 850W, Spindle Lock" },
    { key: "hammers", name: "Rotary Hammers", spec: "20mm, SDS Plus, 3-Mode" },
    { key: "cutters", name: "Cut-Off Machines", spec: "355mm, 2200W, Metal Cutter" },
    { key: "demolition", name: "Demolition Hammers", spec: "15kg, 1500W, Hex Chuck" },
    { key: "cordless", name: "Cordless Drills", spec: "12V, Li-ion, 2-Speed Gearbox" },
    { key: "blowers", name: "Blower & Heat Guns", spec: "600W, Air Blower, Temperature Control" },
    { key: "saws", name: "Circular Saws", spec: "185mm, 1200W, Tilting Base" }
  ],
  "safety-supplies": [
    { key: "shoes", name: "Safety Shoes", spec: "Steel Toe, Anti-Skid, Leather Cover" },
    { key: "helmets", name: "Safety Helmets", spec: "HDPE Shell, Ratchet Suspension, IS 2925" },
    { key: "gloves", name: "Safety Gloves", spec: "Nitrile Coated, Cut-Resistant, Heavy Duty" },
    { key: "ear-muffs", name: "Ear Muffs", spec: "27dB NRR, Padded Headband, Soundproof" },
    { key: "goggles", name: "Safety Goggles", spec: "Anti-Scratch, Clear Lens, UV Protection" },
    { key: "jackets", name: "Reflective Jackets", spec: "High Visibility Neon, Zip Front, Multi-Pockets" },
    { key: "shields", name: "Face Shields", spec: "Polycarbonate Visor, Adjustable Bracket" },
    { key: "fall-protection", name: "Fall Protection Harness", spec: "Full Body Harness, Double Lanyard" }
  ],
  "electrical": [
    { key: "wires", name: "House Wires", spec: "FR PVC Insulated, Single Core, 90m Coil" },
    { key: "stabilizers", name: "Stabilizers", spec: "Digital Display, Voltage Regulator, for AC" },
    { key: "multicore", name: "Multicore Cables", spec: "Flexible Copper, Round PVC Outer, 100m" },
    { key: "batteries", name: "Batteries & Inverters", spec: "150Ah Tubular Battery, Heavy Duty" },
    { key: "switches", name: "Switches & Sockets", spec: "6A/16A Modular Switch, Urea White" },
    { key: "mcb", name: "MCBs & DBs", spec: "16A SP/DP MCB, C-Curve, 10kA Breaking" },
    { key: "conduits", name: "Conduits & Fittings", spec: "20mm Heavy Duty PVC Pipe, 3m Length" },
    { key: "plugs", name: "Industrial Plugs", spec: "16A/32A IP44 Male/Female Industrial Socket" }
  ],
  "office-supplies": [
    { key: "papers", name: "Office Papers", spec: "A4 Size, 75GSM Copier Paper, 500 Sheets" },
    { key: "calculators", name: "Calculators", spec: "12-Digit Desktop Calculator, Dual Power" },
    { key: "staplers", name: "Staplers & Punches", spec: "Heavy Duty Metal Stapler, No. 10 Staples" },
    { key: "pens", name: "Writing Instruments", spec: "0.7mm Blue Ink Gel Pen, Pack of 10" },
    { key: "files", name: "Files & Folders", spec: "Cobra Ring Binder, Plastic Cover, Cobra Clip" },
    { key: "furniture", name: "Office Furniture", spec: "Ergonomic Mesh Chair, Gas Lift" },
    { key: "shredders", name: "Paper Shredders", spec: "Cross-Cut Paper Shredder, 10-Sheet Capacity" },
    { key: "boards", name: "Whiteboards", spec: "2x3 Ft Magnetic Whiteboard, Aluminum Frame" }
  ],
  "industrial-tools": [
    { key: "adhesives", name: "Adhesives & Sealants", spec: "Threadlocker, High Strength, Cyanoacrylate" },
    { key: "lubricants", name: "Lubricants & WD-40", spec: "Anti-Rust Spray, Penetrating Oil, 400ml" },
    { key: "mro-tools", name: "MRO Hand Tools", spec: "Adjustable Wrench, Carbon Steel Chrome" },
    { key: "bearings", name: "Ball Bearings", spec: "Deep Groove Radial Ball Bearing, Steel Cage" },
    { key: "belts", name: "V-Belts", spec: "Industrial Rubber Transmission Belt" },
    { key: "valves", name: "Industrial Valves", spec: "Brass Ball Valve, Screwed Ends, PN25" },
    { key: "pneumatics", name: "Pneumatic Tools", spec: "Air Impact Wrench, 1/2-Inch Drive" },
    { key: "wheels", name: "Castor Wheels", spec: "Heavy Duty Polyurethane Wheel, Swivel Lock" }
  ],
  "pumps-motors": [
    { key: "centrifugal", name: "Centrifugal Pumps", spec: "1HP Monoblock Pump, Cast Iron Impeller" },
    { key: "submersible", name: "Submersible Pumps", spec: "10-Stage Borewell Pump, Copper Motor" },
    { key: "booster", name: "Domestic Booster Pumps", spec: "Automatic Pressure Pump, Stainless Steel" },
    { key: "motors", name: "Electric Motors", spec: "Three Phase AC Induction Motor, TEFC IP55" },
    { key: "monoblock", name: "Monoblock Pumps", spec: "0.5HP Self-Priming Water Pump" },
    { key: "sewage", name: "Sewage Pumps", spec: "Submersible Cutter Sewage Pump, 2HP" },
    { key: "pressure", name: "Pressure Pumps", spec: "High Pressure Washer Pump, Triplex Plunger" },
    { key: "accessories", name: "Pump Accessories", spec: "Digital Pump Controller, Run Dry Protector" }
  ],
  "hand-tools": [
    { key: "spanners", name: "Spanners & Wrenches", spec: "Chrome Vanadium Steel Ring Spanner Set" },
    { key: "screwdrivers", name: "Screwdrivers", spec: "Magnetic Tip Flat/Phillips Screwdriver Set" },
    { key: "pliers", name: "Pliers", spec: "8-Inch Combination Plier, Insulated Grip" },
    { key: "hammers", name: "Hammers", spec: "Claw Hammer, Fiberglass Handle, 500g" },
    { key: "sockets", name: "Sockets & Sets", spec: "40-Piece Socket Wrench Set, 1/4 & 3/8 Inch" },
    { key: "allen-keys", name: "Allen Keys", spec: "9-Piece Hex Key L-Wrench Set" },
    { key: "kits", name: "Tool Kits", spec: "Professional Hand Tool Kit, Plastic Storage Case" },
    { key: "cutters", name: "Strippers & Cutters", spec: "Self-Adjusting Wire Stripper & Cutter Tool" }
  ],
  "agri-gardening": [
    { key: "mowers", name: "Lawn Mowers", spec: "Electric Lawn Mower, 1200W, 30L Collector" },
    { key: "cutters", name: "Brush Cutters", spec: "2-Stroke Petrol Grass Cutter Machine" },
    { key: "trimmers", name: "Hedge Trimmers", spec: "Petrol Hedge Trimmer, Double-Sided Blade" },
    { key: "pruning", name: "Pruning Shears", spec: "Bypass Pruning Shear, Teflon Coated Steel" },
    { key: "sprayers", name: "Sprayers", spec: "16L Battery Operated Knapsack Sprayer Pump" },
    { key: "gardening-tools", name: "Gardening Tools", spec: "3-Piece Hand Trowel Cultivator Rake Set" },
    { key: "seeds", name: "Seeds & Fertilizers", spec: "Organic Vermicompost & Potting Soil Mix" },
    { key: "hoses", name: "Water Hoses", spec: "Flexible PVC Braided Garden Hose, 15m" }
  ],
  "medical-lab": [
    { key: "bp-monitors", name: "BP Monitors", spec: "Fully Automatic Digital Blood Pressure Monitor" },
    { key: "nebulizers", name: "Nebulizers", spec: "Compressor Nebulizer Kit for Kids & Adults" },
    { key: "thermometers", name: "Thermometers", spec: "Non-Contact Infrared Forehead Thermometer" },
    { key: "stethoscopes", name: "Stethoscopes", spec: "Dual Head Stainless Steel Classic Stethoscope" },
    { key: "glassware", name: "Lab Glassware", spec: "Borosilicate Glass Beaker Measuring Cylinder Set" },
    { key: "pipettes", name: "Pipettes", spec: "Variable Volume Micro Pipette, 100-1000ul" },
    { key: "chemicals", name: "Lab Chemicals", spec: "Analytical Reagent Grade Ethanol/Acetone" },
    { key: "surgical", name: "Surgical Gloves", spec: "Disposable Latex Sterile Surgical Gloves" }
  ],
  "fasteners": [
    { key: "bolts", name: "Hex Bolts", spec: "Grade 8.8 High Tensile Zinc Plated Hex Bolt" },
    { key: "screws", name: "Socket Screws", spec: "Alloy Steel Hex Socket Head Cap Screw" },
    { key: "anchors", name: "Anchor Fasteners", spec: "Carbon Steel Expansion Shield Anchor Bolt" },
    { key: "washers", name: "Washers", spec: "Plain Flat Washer, Stainless Steel 304" },
    { key: "nuts", name: "Nuts", spec: "Nylon Insert Lock Nut, Hex Steel" },
    { key: "drywall", name: "Drywall Screws", spec: "Black Phosphate Bugle Head Drywall Screw" },
    { key: "rivets", name: "Rivets", spec: "Aluminum Blind Pop Rivet, Dome Head" },
    { key: "rods", name: "Threaded Rods", spec: "Full Thread Stud Bolt Rod, 1m Length" }
  ]
};

// 10 Main Categories Shelf Metadata
const MAIN_CATEGORIES_LIST = [
  { key: "power-tools", title: "Power Tools" },
  { key: "safety-supplies", title: "Safety Gear" },
  { key: "electrical", title: "Electricals" },
  { key: "office-supplies", title: "Office Supplies" },
  { key: "industrial-tools", title: "Industrial MRO" },
  { key: "pumps-motors", title: "Pumps & Motors" },
  { key: "hand-tools", title: "Hand Tools" },
  { key: "agri-gardening", title: "Agri/Gardening" },
  { key: "medical-lab", title: "Medical & Lab" },
  { key: "fasteners", title: "Fasteners" }
];

// Active subcategories state for each main category shelf
const ACTIVE_SUBCATEGORIES = {};

// Autoplay interval trackers
const AUTOPLAY_INTERVALS = {};

// Initialize active subcategories
MAIN_CATEGORIES_LIST.forEach(cat => {
  if (SUBCATEGORIES_DATA[cat.key] && SUBCATEGORIES_DATA[cat.key].length > 0) {
    ACTIVE_SUBCATEGORIES[cat.key] = SUBCATEGORIES_DATA[cat.key][0].key;
  }
});

let visibleMainCategoriesCount = 5;

// Deterministic B2B product generator
function generateProducts(mainCategoryKey, subcategoryKey) {
  const brands = BRANDS_POOL[mainCategoryKey] || ["FAB", "Polyflex", "Havells"];
  const subcatList = SUBCATEGORIES_DATA[mainCategoryKey] || [];
  const subcat = subcatList.find(s => s.key === subcategoryKey) || { name: "Industrial Product", spec: "Heavy Duty" };
  const subcatName = subcat.name;
  const spec = subcat.spec;

  const products = [];
  const ratings = ["4.5", "4.6", "4.7", "4.4", "4.8"];
  const reviews = ["124", "85", "420", "56", "98"];
  
  // Base prices per category to make them realistic
  let basePrice = 500;
  if (mainCategoryKey === "power-tools") basePrice = 2200;
  else if (mainCategoryKey === "safety-supplies") basePrice = 850;
  else if (mainCategoryKey === "electrical") basePrice = 450;
  else if (mainCategoryKey === "office-supplies") basePrice = 250;
  else if (mainCategoryKey === "industrial-tools") basePrice = 400;
  else if (mainCategoryKey === "pumps-motors") basePrice = 4800;
  else if (mainCategoryKey === "hand-tools") basePrice = 650;
  else if (mainCategoryKey === "agri-gardening") basePrice = 1150;
  else if (mainCategoryKey === "medical-lab") basePrice = 1350;
  else if (mainCategoryKey === "fasteners") basePrice = 120;

  for (let i = 0; i < 5; i++) {
    const brand = brands[i % brands.length];
    const rating = ratings[i % ratings.length];
    const review = reviews[i % reviews.length];
    
    // Add price variations
    const currentVal = Math.round(basePrice * (0.85 + (i * 0.15)));
    const oldVal = Math.round(currentVal * (1.3 + (i * 0.1)));
    const discountPercent = Math.round(((oldVal - currentVal) / oldVal) * 100);

    products.push({
      name: `${brand} Premium ${subcatName} (${spec} - Model ${i + 1})`,
      rating: rating,
      reviews: review,
      currPrice: currentVal.toLocaleString("en-IN"),
      oldPrice: oldVal.toLocaleString("en-IN"),
      discount: `${discountPercent}% OFF`
    });
  }

  return products;
}

// Render product cards inside a shelf's grid
function renderShelfProducts(shelfKey) {
  const grid = document.getElementById(`js-products-grid-${shelfKey}`);
  if (!grid) return;

  const activeSubcat = ACTIVE_SUBCATEGORIES[shelfKey];
  const products = generateProducts(shelfKey, activeSubcat);
  
  grid.innerHTML = "";
  products.forEach((product, index) => {
    const card = document.createElement("div");
    card.className = "product-card";
    card.onclick = () => { window.location.href = `index.php?product=${shelfKey}-${activeSubcat}-${index + 1}`; };
    
    card.innerHTML = `
      <div class="product-card__img-wrap">
        <img class="product-card__img" src="assets/images/products/exide_inverter.jpg" alt="${product.name}">
      </div>
      <div>
        <div class="product-card__rating">${product.rating} ★ <span style="opacity: 0.8; font-weight: 500;">(${product.reviews})</span></div>
        <h4 class="product-card__title">${product.name}</h4>
        <div class="product-card__price-row">
          <span class="product-card__curr-price">₹${product.currPrice}</span>
          ${product.oldPrice ? `<span class="product-card__old-price">₹${product.oldPrice}</span>` : ""}
          ${product.discount ? `<span class="product-card__discount">${product.discount}</span>` : ""}
        </div>
      </div>
    `;
    grid.appendChild(card);
  });
}

// Select a subcategory card in a shelf
window.selectSubcategory = function(shelfKey, subcategoryKey) {
  ACTIVE_SUBCATEGORIES[shelfKey] = subcategoryKey;
  
  // Highlight Active Card in this specific shelf
  const shelfEl = document.getElementById(`shelf-${shelfKey}`);
  if (shelfEl) {
    const cards = shelfEl.querySelectorAll(".category-card");
    cards.forEach(card => {
      if (card.getAttribute("data-subcategory") === subcategoryKey) {
        card.classList.add("active");
      } else {
        card.classList.remove("active");
      }
    });
  }

  renderShelfProducts(shelfKey);
};

// Top Category Nav Strip Click Handler (smooth scrolls to target shelf and expands limits if needed)
window.selectCategory = function(categoryKey) {
  // Map key in category bar to our list key if necessary
  let targetKey = categoryKey;
  if (categoryKey === "safety-supplies") targetKey = "safety-supplies";
  if (categoryKey === "electrical") targetKey = "electrical";
  if (categoryKey === "industrial-tools") targetKey = "industrial-tools";
  if (categoryKey === "pumps-motors") targetKey = "pumps-motors";
  if (categoryKey === "hand-tools") targetKey = "hand-tools";
  if (categoryKey === "agri-gardening") targetKey = "agri-gardening";
  if (categoryKey === "medical-lab") targetKey = "medical-lab";
  if (categoryKey === "fasteners") targetKey = "fasteners";

  const catIndex = MAIN_CATEGORIES_LIST.findIndex(c => c.key === targetKey);
  if (catIndex === -1) return;

  // If target shelf is not loaded yet, expand visibleMainCategoriesCount
  if (catIndex >= visibleMainCategoriesCount) {
    visibleMainCategoriesCount = catIndex + 1;
    renderShelves();
  }

  // Smooth scroll to the target shelf
  setTimeout(() => {
    const targetBlock = document.getElementById(`shelf-${targetKey}`);
    if (targetBlock) {
      targetBlock.scrollIntoView({ behavior: "smooth", block: "start" });
    }
  }, 100);
};

// Render all visible shelves
function renderShelves() {
  const container = document.getElementById("js-category-shelves-container");
  const loadMoreBtn = document.getElementById("js-load-more-btn");
  if (!container) return;

  // Clean old intervals before rendering to avoid memory leaks
  Object.keys(AUTOPLAY_INTERVALS).forEach(key => {
    if (AUTOPLAY_INTERVALS[key]) {
      clearInterval(AUTOPLAY_INTERVALS[key].brands);
      clearInterval(AUTOPLAY_INTERVALS[key].categories);
    }
  });

  let shelvesHtml = "";

  for (let i = 0; i < visibleMainCategoriesCount; i++) {
    const shelf = MAIN_CATEGORIES_LIST[i];
    const brands = BRANDS_POOL[shelf.key] || [];
    const subcats = SUBCATEGORIES_DATA[shelf.key] || [];
    const activeSubcat = ACTIVE_SUBCATEGORIES[shelf.key];

    // Generate Brand Circles HTML
    let brandsHtml = "";
    brands.forEach(b => {
      brandsHtml += `
        <div class="brand-circle-item" onclick="window.location.href='index.php?brand=${b.toLowerCase().replace(/\s+/g, '-')}'">
          <div class="brand-circle">
            <img src="assets/images/logo/polyflex_logo.png" alt="${b} Logo">
          </div>
          <span class="brand-circle-label">${b}</span>
        </div>
      `;
    });

    // Generate Subcategories Cards HTML
    let subcatsHtml = "";
    subcats.forEach(s => {
      const activeClass = s.key === activeSubcat ? "active" : "";
      subcatsHtml += `
        <div class="category-card ${activeClass}" data-subcategory="${s.key}" onclick="selectSubcategory('${shelf.key}', '${s.key}')">
          <div class="category-card__img-wrap">
            <img class="category-card__img" src="assets/images/categories/kalinga_wire.png" alt="${s.name}">
          </div>
          <div class="category-card__text">
            <span class="category-card__title">${s.name}</span>
            <span class="category-card__subtitle">Explore Now</span>
          </div>
        </div>
      `;
    });

    shelvesHtml += `
      <section class="shelf-section" id="shelf-${shelf.key}" aria-label="${shelf.title} Shelf">
        <!-- Shelf Header -->
        <div class="shelf-header">
          <h2 class="shelf-title">${shelf.title}</h2>
          <button class="view-all-btn" onclick="window.location.href='index.php?category=${shelf.key}'">View All</button>
        </div>

        <!-- Shelf Main Block -->
        <div class="shelf-main-block">
          <!-- Left: Top Brands -->
          <div class="brands-box">
            <h3 class="brands-title">Top Brands &amp; Related Categories</h3>
            <div class="brands-viewport" id="js-brands-viewport-${shelf.key}">
              <div class="brands-track" id="js-brands-track-${shelf.key}">
                ${brandsHtml}
              </div>
            </div>
          </div>

          <!-- Right: Categories Carousel -->
          <div class="categories-carousel-container">
            <div class="categories-viewport" id="js-categories-viewport-${shelf.key}">
              <div class="categories-track" id="js-categories-track-${shelf.key}">
                ${subcatsHtml}
              </div>
            </div>
            
            <!-- Nav buttons -->
            <button class="carousel-btn carousel-btn--left categories-btn--left" id="js-categories-prev-${shelf.key}" aria-label="Scroll left">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <polyline points="15 18 9 12 15 6"></polyline>
              </svg>
            </button>
            <button class="carousel-btn carousel-btn--right categories-btn--right" id="js-categories-next-${shelf.key}" aria-label="Scroll right">
              <svg width="18" height="18" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5" stroke-linecap="round" stroke-linejoin="round">
                <polyline points="9 18 15 12 9 6"></polyline>
              </svg>
            </button>
          </div>
        </div>

        <!-- Bottom: Shelf Products Grid -->
        <div class="products-grid-container">
          <div class="products-grid" id="js-products-grid-${shelf.key}">
            <!-- Product Cards injected here -->
          </div>
        </div>
      </section>
    `;
  }

  container.innerHTML = shelvesHtml;

  // Render product grids and initialize scroll behavior for each visible shelf
  for (let i = 0; i < visibleMainCategoriesCount; i++) {
    const shelf = MAIN_CATEGORIES_LIST[i];
    renderShelfProducts(shelf.key);
    initShelfCarousels(shelf.key);
  }

  // Update load more button state
  const loadMoreRow = document.getElementById("js-load-more-row");
  if (loadMoreRow) {
    if (visibleMainCategoriesCount >= MAIN_CATEGORIES_LIST.length) {
      loadMoreRow.style.display = "none";
    } else {
      loadMoreRow.style.display = "flex";
    }
  }
}

// Load more shelves on button click
window.loadMoreShelves = function() {
  if (visibleMainCategoriesCount < MAIN_CATEGORIES_LIST.length) {
    visibleMainCategoriesCount += 5; // Load next 5 categories
    renderShelves();
  }
};

// Initialize carousels scroll and autoplay for a single shelf
function initShelfCarousels(shelfKey) {
  const shelfEl = document.getElementById(`shelf-${shelfKey}`);
  if (!shelfEl) return;

  const brandsViewport = shelfEl.querySelector(`#js-brands-viewport-${shelfKey}`);
  const catsViewport = shelfEl.querySelector(`#js-categories-viewport-${shelfKey}`);
  const catsBtnLeft = shelfEl.querySelector(`#js-categories-prev-${shelfKey}`);
  const catsBtnRight = shelfEl.querySelector(`#js-categories-next-${shelfKey}`);
  const firstCatCard = catsViewport ? catsViewport.querySelector(".category-card") : null;

  AUTOPLAY_INTERVALS[shelfKey] = { brands: null, categories: null };

  // 1. Setup Brands Autoplay
  if (brandsViewport) {
    const autoPlayBrands = () => {
      const maxScroll = brandsViewport.scrollWidth - brandsViewport.clientWidth;
      if (maxScroll <= 0) return;
      
      const firstBrand = brandsViewport.querySelector(".brand-circle-item");
      const scrollAmount = firstBrand ? (firstBrand.offsetWidth + 16) * 2 : 150;
      
      if (brandsViewport.scrollLeft >= maxScroll - 5) {
        brandsViewport.scrollTo({ left: 0, behavior: "smooth" });
      } else {
        brandsViewport.scrollBy({ left: scrollAmount, behavior: "smooth" });
      }
    };

    let interval = setInterval(autoPlayBrands, 3500);
    AUTOPLAY_INTERVALS[shelfKey].brands = interval;

    const stopBrandsAuto = () => {
      if (AUTOPLAY_INTERVALS[shelfKey]) clearInterval(AUTOPLAY_INTERVALS[shelfKey].brands);
    };
    const startBrandsAuto = () => {
      if (AUTOPLAY_INTERVALS[shelfKey]) {
        clearInterval(AUTOPLAY_INTERVALS[shelfKey].brands);
        AUTOPLAY_INTERVALS[shelfKey].brands = setInterval(autoPlayBrands, 3500);
      }
    };

    brandsViewport.addEventListener("mouseenter", stopBrandsAuto);
    brandsViewport.addEventListener("mouseleave", startBrandsAuto);
    brandsViewport.addEventListener("touchstart", stopBrandsAuto);
  }

  // 2. Setup Subcategories Manual Nav & Autoplay
  if (catsViewport && firstCatCard && catsBtnLeft && catsBtnRight) {
    const updateCatArrows = () => {
      const scrollLeftVal = catsViewport.scrollLeft;
      const maxScroll = catsViewport.scrollWidth - catsViewport.clientWidth;
      catsBtnLeft.style.display = scrollLeftVal <= 5 ? "none" : "flex";
      catsBtnRight.style.display = scrollLeftVal >= maxScroll - 5 ? "none" : "flex";
    };

    const getCatScrollDistance = () => {
      return (firstCatCard.offsetWidth + 12) * 2;
    };

    catsBtnRight.addEventListener("click", () => {
      catsViewport.scrollBy({ left: getCatScrollDistance(), behavior: "smooth" });
    });

    catsBtnLeft.addEventListener("click", () => {
      catsViewport.scrollBy({ left: -getCatScrollDistance(), behavior: "smooth" });
    });

    catsViewport.addEventListener("scroll", updateCatArrows);
    window.addEventListener("resize", updateCatArrows);
    updateCatArrows();

    // Autoplay subcategories
    const autoPlayCats = () => {
      const maxScroll = catsViewport.scrollWidth - catsViewport.clientWidth;
      if (maxScroll <= 0) return;
      if (catsViewport.scrollLeft >= maxScroll - 5) {
        catsViewport.scrollTo({ left: 0, behavior: "smooth" });
      } else {
        catsViewport.scrollBy({ left: getCatScrollDistance() / 2, behavior: "smooth" });
      }
    };
    
    let interval = setInterval(autoPlayCats, 4000);
    AUTOPLAY_INTERVALS[shelfKey].categories = interval;

    const stopCatsAuto = () => {
      if (AUTOPLAY_INTERVALS[shelfKey]) clearInterval(AUTOPLAY_INTERVALS[shelfKey].categories);
    };
    const startCatsAuto = () => {
      if (AUTOPLAY_INTERVALS[shelfKey]) {
        clearInterval(AUTOPLAY_INTERVALS[shelfKey].categories);
        AUTOPLAY_INTERVALS[shelfKey].categories = setInterval(autoPlayCats, 4000);
      }
    };

    catsViewport.addEventListener("mouseenter", stopCatsAuto);
    catsViewport.addEventListener("mouseleave", startCatsAuto);
    catsViewport.addEventListener("touchstart", stopCatsAuto);
    catsBtnLeft.addEventListener("click", stopCatsAuto);
    catsBtnRight.addEventListener("click", stopCatsAuto);
  }
}

// Initial load
document.addEventListener("DOMContentLoaded", () => {
  renderShelves();

  // Listen for navigation clicks in category-bar.php to connect with selectCategory()
  setTimeout(() => {
    const catBarItems = document.querySelectorAll(".category-nav-bar .category-item");
    catBarItems.forEach(item => {
      const href = item.getAttribute("href");
      if (href && href.includes("category=")) {
        const urlParams = new URLSearchParams(href.split("?")[1]);
        const catKey = urlParams.get("category");
        if (catKey) {
          // Remove standard link navigation and hook selectCategory
          item.removeAttribute("href");
          item.style.cursor = "pointer";
          item.addEventListener("click", (e) => {
            e.preventDefault();
            selectCategory(catKey);
          });
        }
      }
    });
  }, 150);
});
</script>
