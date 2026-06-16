<?php
/**
 * JHD Industrial Solution - Main Landing Page (Shell)
 * 
 * Contains SEO metadata, Structured Data Schema, and integrates the 
 * premium B2B Header component.
 */

// Capture search query if any (for frontend demo response)
$search_query = isset($_GET['search']) ? htmlspecialchars($_GET['search'], ENT_QUOTES, 'UTF-8') : '';

$product_param = isset($_GET['product']) ? htmlspecialchars($_GET['product'], ENT_QUOTES, 'UTF-8') : '';
$is_product_page = !empty($product_param);

$product = null;

if ($is_product_page) {
    // Parse: [main-cat]-[sub-cat]-[index]
    // index is 1-indexed (e.g., power-tools-drills-1)
    $parts = explode('-', $product_param);
    if (count($parts) >= 3) {
        $index_val = intval(array_pop($parts));
        $sub_cat_key = array_pop($parts);
        $main_cat_key = implode('-', $parts);
        
        $brands_pool = [
            "power-tools" => ["Bosch", "Dewalt", "Makita", "Stanley", "Black & Decker", "Foster", "Ibell", "Yuri", "HiMax", "King", "Eastman", "Jakmister"],
            "safety-supplies" => ["3M", "Karam", "Allen Cooper", "Honeywell", "Mallcom", "Liberty", "Bata", "Safari", "Hillson", "ACME", "King's", "Vaultex"],
            "electrical" => ["FAB", "CabONE", "Fabgold", "Polyflex", "Havells", "Schneider", "Microtek", "Anchor", "L&T", "KEI", "Finolex", "V-Guard"],
            "office-supplies" => ["Kores", "Casio", "Kangaro", "Nataraj", "Apsara", "Reynolds", "Parker", "Pilot", "Double A", "JK Paper", "Fellowes", "Solo"],
            "industrial-tools" => ["Loctite", "WD-40", "Pidilite", "M-Seal", "Fevicol", "Taparia", "Venus", "SKF", "Fag", "NBC", "Goodyear", "Fenner"],
            "pumps-motors" => ["Kirloskar", "Crompton", "Texmo", "CRI", "V-Guard", "Havells", "Lubi", "Taro", "Oswal", "Falcon", "Sameer", "KSB"],
            "hand-tools" => ["Taparia", "Stanley", "Eastman", "Jon Bhandari", "Yuri", "Groz", "Venus", "Ajay", "Ambika", "Pye", "Foster", "Bosch"],
            "agri-gardening" => ["Neptune", "Kisan Kraft", "Falcon", "STIHL", "Sharpex", "Kraft Seeds", "Wolf Garten", "Hitachi", "Honda", "Balwaan", "Green Gold", "TrustBasket"],
            "medical-lab" => ["Omron", "Dr. Trust", "Beurer", "Philips", "Borosil", "Tarsons", "HiMedia", "3M Littmann", "Thermofisher", "SD Biosensor", "Rossmax", "Romsons"],
            "fasteners" => ["TVS", "Unbrako", "LPS", "Pooja", "Apex", "Kundan", "Sterling", "Boltas", "Hilti", "Fischer", "Rawlplug", "Bosch"]
        ];

        $subcategories_data = [
            "power-tools" => [
                "drills" => ["name" => "Drill Machine", "spec" => "Impact Drill, Heavy Duty, Variable Speed"],
                "grinders" => ["name" => "Angle Grinder", "spec" => "100mm, 850W, Spindle Lock"],
                "hammers" => ["name" => "Rotary Hammer", "spec" => "20mm, SDS Plus, 3-Mode"],
                "cutters" => ["name" => "Cut-Off Machine", "spec" => "355mm, 2200W, Metal Cutter"],
                "demolition" => ["name" => "Demolition Hammer", "spec" => "15kg, 1500W, Hex Chuck"],
                "cordless" => ["name" => "Cordless Drill", "spec" => "12V, Li-ion, 2-Speed Gearbox"],
                "blowers" => ["name" => "Blower & Heat Gun", "spec" => "600W, Air Blower, Temperature Control"],
                "saws" => ["name" => "Circular Saw", "spec" => "185mm, 1200W, Tilting Base"]
            ],
            "safety-supplies" => [
                "shoes" => ["name" => "Safety Shoes", "spec" => "Steel Toe, Anti-Skid, Leather Cover"],
                "helmets" => ["name" => "Safety Helmet", "spec" => "HDPE Shell, Ratchet Suspension, IS 2925"],
                "gloves" => ["name" => "Safety Gloves", "spec" => "Nitrile Coated, Cut-Resistant, Heavy Duty"],
                "ear-muffs" => ["name" => "Ear Muffs", "spec" => "27dB NRR, Padded Headband, Soundproof"],
                "goggles" => ["name" => "Safety Goggles", "spec" => "Anti-Scratch, Clear Lens, UV Protection"],
                "jackets" => ["name" => "Reflective Jacket", "spec" => "High Visibility Neon, Zip Front, Multi-Pockets"],
                "shields" => ["name" => "Face Shield", "spec" => "Polycarbonate Visor, Adjustable Bracket"],
                "fall-protection" => ["name" => "Fall Protection Harness", "spec" => "Full Body Harness, Double Lanyard"]
            ],
            "electrical" => [
                "wires" => ["name" => "House Wire", "spec" => "FR PVC Insulated, Single Core, 90m Coil"],
                "stabilizers" => ["name" => "Stabilizer", "spec" => "Digital Display, Voltage Regulator, for AC"],
                "multicore" => ["name" => "Multicore Cable", "spec" => "Flexible Copper, Round PVC Outer, 100m"],
                "batteries" => ["name" => "Battery & Inverter", "spec" => "150Ah Tubular Battery, Heavy Duty"],
                "switches" => ["name" => "Switch & Socket", "spec" => "6A/16A Modular Switch, Urea White"],
                "mcb" => ["name" => "MCB & DB", "spec" => "16A SP/DP MCB, C-Curve, 10kA Breaking"],
                "conduits" => ["name" => "Conduit & Fitting", "spec" => "20mm Heavy Duty PVC Pipe, 3m Length"],
                "plugs" => ["name" => "Industrial Plug", "spec" => "16A/32A IP44 Male/Female Industrial Socket"]
            ],
            "office-supplies" => [
                "papers" => ["name" => "Office Paper", "spec" => "A4 Size, 75GSM Copier Paper, 500 Sheets"],
                "calculators" => ["name" => "Calculator", "spec" => "12-Digit Desktop Calculator, Dual Power"],
                "staplers" => ["name" => "Stapler & Punch", "spec" => "Heavy Duty Metal Stapler, No. 10 Staples"],
                "pens" => ["name" => "Writing Instrument", "spec" => "0.7mm Blue Ink Gel Pen, Pack of 10"],
                "files" => ["name" => "File & Folder", "spec" => "Cobra Ring Binder, Plastic Cover, Cobra Clip"],
                "furniture" => ["name" => "Office Furniture", "spec" => "Ergonomic Mesh Chair, Gas Lift"],
                "shredders" => ["name" => "Paper Shredder", "spec" => "Cross-Cut Paper Shredder, 10-Sheet Capacity"],
                "boards" => ["name" => "Whiteboard", "spec" => "2x3 Ft Magnetic Whiteboard, Aluminum Frame"]
            ],
            "industrial-tools" => [
                "adhesives" => ["name" => "Adhesive & Sealant", "spec" => "Threadlocker, High Strength, Cyanoacrylate"],
                "lubricants" => ["name" => "Lubricant & WD-40", "spec" => "Anti-Rust Spray, Penetrating Oil, 400ml"],
                "mro-tools" => ["name" => "MRO Hand Tool", "spec" => "Adjustable Wrench, Carbon Steel Chrome"],
                "bearings" => ["name" => "Ball Bearing", "spec" => "Deep Groove Radial Ball Bearing, Steel Cage"],
                "belts" => ["name" => "V-Belt", "spec" => "Industrial Rubber Transmission Belt"],
                "valves" => ["name" => "Industrial Valve", "spec" => "Brass Ball Valve, Screwed Ends, PN25"],
                "pneumatics" => ["name" => "Pneumatic Tool", "spec" => "Air Impact Wrench, 1/2-Inch Drive"],
                "wheels" => ["name" => "Castor Wheel", "spec" => "Heavy Duty Polyurethane Wheel, Swivel Lock"]
            ],
            "pumps-motors" => [
                "centrifugal" => ["name" => "Centrifugal Pump", "spec" => "1HP Monoblock Pump, Cast Iron Impeller"],
                "submersible" => ["name" => "Submersible Pump", "spec" => "10-Stage Borewell Pump, Copper Motor"],
                "booster" => ["name" => "Domestic Booster Pump", "spec" => "Automatic Pressure Pump, Stainless Steel"],
                "motors" => ["name" => "Electric Motor", "spec" => "Three Phase AC Induction Motor, TEFC IP55"],
                "monoblock" => ["name" => "Monoblock Pump", "spec" => "0.5HP Self-Priming Water Pump"],
                "sewage" => ["name" => "Sewage Pump", "spec" => "Submersible Cutter Sewage Pump, 2HP"],
                "pressure" => ["name" => "Pressure Pump", "spec" => "High Pressure Washer Pump, Triplex Plunger"],
                "accessories" => ["name" => "Pump Accessory", "spec" => "Digital Pump Controller, Run Dry Protector"]
            ],
            "hand-tools" => [
                "spanners" => ["name" => "Spanners & Wrench", "spec" => "Chrome Vanadium Steel Ring Spanner Set"],
                "screwdrivers" => ["name" => "Screwdriver", "spec" => "Magnetic Tip Flat/Phillips Screwdriver Set"],
                "pliers" => ["name" => "Pliers", "spec" => "8-Inch Combination Plier, Insulated Grip"],
                "hammers" => ["name" => "Hammer", "spec" => "Claw Hammer, Fiberglass Handle, 500g"],
                "sockets" => ["name" => "Sockets & Set", "spec" => "40-Piece Socket Wrench Set, 1/4 & 3/8 Inch"],
                "allen-keys" => ["name" => "Allen Keys", "spec" => "9-Piece Hex Key L-Wrench Set"],
                "kits" => ["name" => "Tool Kit", "spec" => "Professional Hand Tool Kit, Plastic Storage Case"],
                "cutters" => ["name" => "Stripper & Cutter", "spec" => "Self-Adjusting Wire Stripper & Cutter Tool"]
            ],
            "agri-gardening" => [
                "mowers" => ["name" => "Lawn Mower", "spec" => "Electric Lawn Mower, 1200W, 30L Collector"],
                "cutters" => ["name" => "Brush Cutter", "spec" => "2-Stroke Petrol Grass Cutter Machine"],
                "trimmers" => ["name" => "Hedge Trimmer", "spec" => "Petrol Hedge Trimmer, Double-Sided Blade"],
                "pruning" => ["name" => "Pruning Shear", "spec" => "Bypass Pruning Shear, Teflon Coated Steel"],
                "sprayers" => ["name" => "Sprayer", "spec" => "16L Battery Operated Knapsack Sprayer Pump"],
                "gardening-tools" => ["name" => "Gardening Tool", "spec" => "3-Piece Hand Trowel Cultivator Rake Set"],
                "seeds" => ["name" => "Seeds & Fertilizer", "spec" => "Organic Vermicompost & Potting Soil Mix"],
                "hoses" => ["name" => "Water Hose", "spec" => "Flexible PVC Braided Garden Hose, 15m"]
            ],
            "medical-lab" => [
                "bp-monitors" => ["name" => "BP Monitor", "spec" => "Fully Automatic Digital Blood Pressure Monitor"],
                "nebulizers" => ["name" => "Nebulizer", "spec" => "Compressor Nebulizer Kit for Kids & Adults"],
                "thermometers" => ["name" => "Thermometer", "spec" => "Non-Contact Infrared Forehead Thermometer"],
                "stethoscopes" => ["name" => "Stethoscope", "spec" => "Dual Head Stainless Steel Classic Stethoscope"],
                "glassware" => ["name" => "Lab Glassware", "spec" => "Borosilicate Glass Beaker Measuring Cylinder Set"],
                "pipettes" => ["name" => "Pipette", "spec" => "Variable Volume Micro Pipette, 100-1000ul"],
                "chemicals" => ["name" => "Lab Chemical", "spec" => "Analytical Reagent Grade Ethanol/Acetone"],
                "surgical" => ["name" => "Surgical Gloves", "spec" => "Disposable Latex Sterile Surgical Gloves"]
            ],
            "fasteners" => [
                "bolts" => ["name" => "Hex Bolt", "spec" => "Grade 8.8 High Tensile Zinc Plated Hex Bolt"],
                "screws" => ["name" => "Socket Screw", "spec" => "Alloy Steel Hex Socket Head Cap Screw"],
                "anchors" => ["name" => "Anchor Fastener", "spec" => "Carbon Steel Expansion Shield Anchor Bolt"],
                "washers" => ["name" => "Washer", "spec" => "Plain Flat Washer, Stainless Steel 304"],
                "nuts" => ["name" => "Nut", "spec" => "Nylon Insert Lock Nut, Hex Steel"],
                "drywall" => ["name" => "Drywall Screw", "spec" => "Black Phosphate Bugle Head Drywall Screw"],
                "rivets" => ["name" => "Rivet", "spec" => "Aluminum Blind Pop Rivet, Dome Head"],
                "rods" => ["name" => "Threaded Rod", "spec" => "Full Thread Stud Bolt Rod, 1m Length"]
            ]
        ];

        $main_categories_titles = [
            "power-tools" => "Power Tools",
            "safety-supplies" => "Safety Gear",
            "electrical" => "Electricals",
            "office-supplies" => "Office Supplies",
            "industrial-tools" => "Industrial MRO",
            "pumps-motors" => "Pumps & Motors",
            "hand-tools" => "Hand Tools",
            "agri-gardening" => "Agri/Gardening",
            "medical-lab" => "Medical & Lab",
            "fasteners" => "Fasteners"
        ];

        if (isset($main_categories_titles[$main_cat_key]) && isset($subcategories_data[$main_cat_key][$sub_cat_key])) {
            $brands = $brands_pool[$main_cat_key];
            $subcat_info = $subcategories_data[$main_cat_key][$sub_cat_key];
            
            $subcat_name = $subcat_info['name'];
            $spec = $subcat_info['spec'];
            $idx = ($index_val - 1) % count($brands);
            if ($idx < 0) $idx = 0;
            $brand = $brands[$idx];

            $ratings = ["4.5", "4.6", "4.7", "4.4", "4.8"];
            $reviews = ["124", "85", "420", "56", "98"];
            $rating = $ratings[$idx % count($ratings)];
            $review_count = $reviews[$idx % count($reviews)];

            $basePrice = 500;
            if ($main_cat_key === "power-tools") $basePrice = 2200;
            elseif ($main_cat_key === "safety-supplies") $basePrice = 850;
            elseif ($main_cat_key === "electrical") $basePrice = 450;
            elseif ($main_cat_key === "office-supplies") $basePrice = 250;
            elseif ($main_cat_key === "industrial-tools") $basePrice = 400;
            elseif ($main_cat_key === "pumps-motors") $basePrice = 4800;
            elseif ($main_cat_key === "hand-tools") $basePrice = 650;
            elseif ($main_cat_key === "agri-gardening") $basePrice = 1150;
            elseif ($main_cat_key === "medical-lab") $basePrice = 1350;
            elseif ($main_cat_key === "fasteners") $basePrice = 120;

            $currPrice = round($basePrice * (0.85 + ($idx * 0.15)));
            $oldPrice = round($currPrice * (1.3 + ($idx * 0.1)));
            $discount = round((($oldPrice - $currPrice) / $oldPrice) * 100);

            $product = [
                "name" => "{$brand} Premium {$subcat_name} ({$spec} - Model " . ($index_val) . ")",
                "brand" => $brand,
                "category" => $main_categories_titles[$main_cat_key],
                "category_key" => $main_cat_key,
                "subcategory" => $subcat_name,
                "subcategory_key" => $sub_cat_key,
                "rating" => $rating,
                "reviews" => $review_count,
                "price" => $currPrice,
                "oldPrice" => $oldPrice,
                "discount" => $discount,
                "specifications" => [
                    "Brand" => $brand,
                    "Model" => "JHD-" . strtoupper(substr($main_cat_key, 0, 2)) . "-" . $index_val . "X",
                    "Weight" => ($main_cat_key === 'power-tools' || $main_cat_key === 'pumps-motors' ? "3.5 kg" : "0.5 kg"),
                    "Warranty" => "1 Year Brand Warranty",
                    "Capacity" => ($main_cat_key === 'pumps-motors' ? "1 HP" : ($main_cat_key === 'electrical' ? "150 Ah" : "Standard")),
                    "Dimensions" => "25 x 15 x 10 cm",
                    "Country of Origin" => "India"
                ],
                "description" => "This heavy-duty {$brand} Premium {$subcat_name} is specifically designed for high-performance B2B industrial usage. Equipped with advanced safety features and premium materials, it ensures long-lasting durability and reliability in challenging environments. JHD Industrial Solution offers special bulk pricing and corporate rates on this product. Inquire today for custom quotes."
            ];
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- SEO Meta Tags -->
  <?php if ($product): ?>
    <title><?php echo htmlspecialchars($product['name']); ?> | Buy Online | JHD Industrial Solution</title>
    <meta name="description" content="Buy <?php echo htmlspecialchars($product['name']); ?> online at best prices from JHD Industrial Solution. Get high-quality, GST invoice, bulk discounts, and prompt B2B delivery across India.">
    <link rel="canonical" href="https://jhdindustrialsolution.com/index.php?product=<?php echo htmlspecialchars($product_param); ?>">
  <?php else: ?>
    <title>JHD Industrial Solution | AI-Powered B2B Industrial E-Commerce</title>
    <meta name="description" content="JHD Industrial Solution is India's leading AI-powered B2B e-commerce platform for industrial tools, safety equipment, electrical accessories, MRO supplies, pumps, and motors. Simplify your corporate procurement.">
    <link rel="canonical" href="https://jhdindustrialsolution.com/">
  <?php endif; ?>
  <meta name="keywords" content="JHD, JHD Industrial Solution, B2B e-commerce, industrial tools, MRO supplies, safety shoes, electricals, power tools, Jind, procurement, bulk order">
  <meta name="author" content="JHD Industrial Solution">

  <!-- Open Graph / Facebook Meta Tags -->
  <meta property="og:type" content="website">
  <?php if ($product): ?>
    <meta property="og:url" content="https://jhdindustrialsolution.com/index.php?product=<?php echo htmlspecialchars($product_param); ?>">
    <meta property="og:title" content="<?php echo htmlspecialchars($product['name']); ?> | JHD Industrial Solution">
    <meta property="og:description" content="Get premium B2B deals on <?php echo htmlspecialchars($product['name']); ?>. GST Invoice, bulk procurement discounts, and secure checkout.">
  <?php else: ?>
    <meta property="og:url" content="https://jhdindustrialsolution.com/">
    <meta property="og:title" content="JHD Industrial Solution | AI-Powered B2B Industrial E-Commerce">
    <meta property="og:description" content="India's premium AI-driven corporate procurement portal. Buy power tools, safety equipment, electricals, and MRO supplies in bulk.">
  <?php endif; ?>
  <meta property="og:image" content="https://jhdindustrialsolution.com/assets/images/products/exide_inverter.jpg">

  <!-- Twitter Meta Tags -->
  <meta property="twitter:card" content="summary_large_image">
  <?php if ($product): ?>
    <meta property="twitter:url" content="https://jhdindustrialsolution.com/index.php?product=<?php echo htmlspecialchars($product_param); ?>">
    <meta property="twitter:title" content="<?php echo htmlspecialchars($product['name']); ?> | JHD Industrial Solution">
    <meta property="twitter:description" content="Get premium B2B deals on <?php echo htmlspecialchars($product['name']); ?>. GST Invoice, bulk procurement discounts, and secure checkout.">
  <?php else: ?>
    <meta property="twitter:url" content="https://jhdindustrialsolution.com/">
    <meta property="twitter:title" content="JHD Industrial Solution | AI-Powered B2B Industrial E-Commerce">
    <meta property="twitter:description" content="India's premium AI-driven corporate procurement portal. Buy power tools, safety equipment, electricals, and MRO supplies in bulk.">
  <?php endif; ?>
  <meta property="twitter:image" content="https://jhdindustrialsolution.com/assets/images/products/exide_inverter.jpg">

  <!-- Stylesheets -->
  <link rel="stylesheet" href="assets/css/header.css">

  <!-- Schema.org JSON-LD Structured Data -->
  <script type="application/ld+json">
  {
    "@context": "https://schema.org",
    "@graph": [
      {
        "@type": "Organization",
        "@id": "https://jhdindustrialsolution.com/#organization",
        "name": "JHD Industrial Solution",
        "url": "https://jhdindustrialsolution.com/",
        "logo": {
          "@type": "ImageObject",
          "@id": "https://jhdindustrialsolution.com/#logo",
          "url": "https://jhdindustrialsolution.com/assets/images/logo.png",
          "caption": "JHD Industrial Solution Logo"
        },
        "contactPoint": {
          "@type": "ContactPoint",
          "telephone": "+91-1262-220000",
          "contactType": "customer service",
          "email": "support@jhdindustrialsolution.com",
          "areaServed": "IN",
          "availableLanguage": "en"
        },
        "address": {
          "@type": "PostalAddress",
          "streetAddress": "Rohtak Road, Jind",
          "addressLocality": "Jind",
          "addressRegion": "Haryana",
          "postalCode": "126125",
          "addressCountry": "IN"
        }
      },
      <?php if ($product): ?>
      {
        "@type": "Product",
        "@id": "https://jhdindustrialsolution.com/index.php?product=<?php echo htmlspecialchars($product_param); ?>#product",
        "name": "<?php echo htmlspecialchars($product['name']); ?>",
        "image": "https://jhdindustrialsolution.com/assets/images/products/exide_inverter.jpg",
        "description": "<?php echo htmlspecialchars($product['description']); ?>",
        "brand": {
          "@type": "Brand",
          "name": "<?php echo htmlspecialchars($product['brand']); ?>"
        },
        "offers": {
          "@type": "Offer",
          "url": "https://jhdindustrialsolution.com/index.php?product=<?php echo htmlspecialchars($product_param); ?>",
          "priceCurrency": "INR",
          "price": "<?php echo $product['price']; ?>",
          "priceValidUntil": "2027-12-31",
          "itemCondition": "https://schema.org/NewCondition",
          "availability": "https://schema.org/InStock",
          "seller": {
            "@type": "Organization",
            "name": "JHD Industrial Solution"
          }
        },
        "aggregateRating": {
          "@type": "AggregateRating",
          "ratingValue": "<?php echo $product['rating']; ?>",
          "reviewCount": "<?php echo $product['reviews']; ?>"
        }
      }
      <?php else: ?>
      {
        "@type": "WebSite",
        "@id": "https://jhdindustrialsolution.com/#website",
        "url": "https://jhdindustrialsolution.com/",
        "name": "JHD Industrial Solution",
        "description": "Leading AI-Powered B2B Industrial Procurement Platform",
        "publisher": {
          "@id": "https://jhdindustrialsolution.com/#organization"
        },
        "potentialAction": {
          "@type": "SearchAction",
          "target": {
            "@type": "EntryPoint",
            "urlTemplate": "https://jhdindustrialsolution.com/index.php?search={search_term_string}"
          },
          "query-input": "required name=search_term_string"
        }
      }
      <?php endif; ?>
    ]
  }
  </script>
</head>
<body>

  <!-- Include Premium B2B Header -->
  <?php include_once 'includes/header.php'; ?>

  <!-- Include Category Navigation Strip -->
  <?php include_once 'includes/category-bar.php'; ?>

  <?php if ($product): ?>
    <!-- Load Premium B2B Product Details Page Component -->
    <?php include_once 'includes/product-details.php'; ?>
  <?php else: ?>
    <!-- Include Brand Hero Slider -->
    <?php include_once 'includes/hero-slider.php'; ?>

    <!-- Include Category Products Shelf -->
    <?php include_once 'includes/category-products.php'; ?>

    <!-- Content Simulation Area (Dynamic Search Feedback) -->
    <?php if (!empty($search_query)): ?>
      <div style="max-width: 1440px; margin: 32px auto; padding: 0 24px;">
        <div style="background-color: #ffffff; border: 1.5px solid var(--border-color, #e2e8f0); border-radius: 8px; padding: 24px; box-shadow: var(--card-shadow, 0 4px 6px -1px rgb(0 0 0 / 0.05));">
          <h2 style="font-size: 20px; font-weight: 700; color: var(--primary-color, #0b2545); margin-bottom: 8px;">Search Result Simulation</h2>
          <p style="font-size: 14px; color: var(--text-muted, #64748b);">You searched for: <strong style="color: var(--accent-color, #d90429); font-size: 16px;">"<?php echo $search_query; ?>"</strong></p>
          <p style="font-size: 13px; color: var(--text-dark, #1e293b); margin-top: 12px; line-height: 1.6;">
            This is a frontend demonstration. In production, this parameter will connect to a PHP database search handler or Elasticsearch API to load corresponding products from our catalog.
          </p>
          <button onclick="window.location.href='index.php'" style="margin-top: 16px; background-color: var(--primary-color, #0b2545); color: #ffffff; padding: 8px 16px; border-radius: 6px; font-size: 13px; font-weight: 600;">Clear Search</button>
        </div>
      </div>
    <?php endif; ?>
  <?php endif; ?>

  <!-- Include Premium B2B Footer -->
  <?php include_once 'includes/footer.php'; ?>

</body>
</html>

