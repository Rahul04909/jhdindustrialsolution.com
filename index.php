<?php
/**
 * JHD Industrial Solution - Main Landing Page (Shell)
 * 
 * Contains SEO metadata, Structured Data Schema, and integrates the 
 * premium B2B Header component.
 */

// Capture search query if any (for frontend demo response)
$search_query = isset($_GET['search']) ? htmlspecialchars($_GET['search'], ENT_QUOTES, 'UTF-8') : '';
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  
  <!-- SEO Meta Tags -->
  <title>JHD Industrial Solution | AI-Powered B2B Industrial E-Commerce</title>
  <meta name="description" content="JHD Industrial Solution is India's leading AI-powered B2B e-commerce platform for industrial tools, safety equipment, electrical accessories, MRO supplies, pumps, and motors. Simplify your corporate procurement.">
  <meta name="keywords" content="JHD, JHD Industrial Solution, B2B e-commerce, industrial tools, MRO supplies, safety shoes, electricals, power tools, Jind, procurement, bulk order">
  <meta name="author" content="JHD Industrial Solution">
  <link rel="canonical" href="https://jhdindustrialsolution.com/">

  <!-- Open Graph / Facebook Meta Tags -->
  <meta property="og:type" content="website">
  <meta property="og:url" content="https://jhdindustrialsolution.com/">
  <meta property="og:title" content="JHD Industrial Solution | AI-Powered B2B Industrial E-Commerce">
  <meta property="og:description" content="India's premium AI-driven corporate procurement portal. Buy power tools, safety equipment, electricals, and MRO supplies in bulk.">
  <meta property="og:image" content="https://jhdindustrialsolution.com/assets/images/og-banner.jpg">

  <!-- Twitter Meta Tags -->
  <meta property="twitter:card" content="summary_large_image">
  <meta property="twitter:url" content="https://jhdindustrialsolution.com/">
  <meta property="twitter:title" content="JHD Industrial Solution | AI-Powered B2B Industrial E-Commerce">
  <meta property="twitter:description" content="India's premium AI-driven corporate procurement portal. Buy power tools, safety equipment, electricals, and MRO supplies in bulk.">
  <meta property="twitter:image" content="https://jhdindustrialsolution.com/assets/images/og-banner.jpg">

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
    ]
  }
  </script>
</head>
<body>

  <!-- Include Premium B2B Header -->
  <?php include_once 'includes/header.php'; ?>

  <!-- Include Category Navigation Strip -->
  <?php include_once 'includes/category-bar.php'; ?>

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

  <!-- Include Premium B2B Footer -->
  <?php include_once 'includes/footer.php'; ?>

</body>
</html>

