-- MySQL dump for quote_requests table
-- This table stores all product quote requests from users

DROP TABLE IF EXISTS `quote_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quote_requests` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned DEFAULT NULL,
  `customer_id` bigint unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `admin_note` text COLLATE utf8mb4_unicode_ci,
  `quoted_price` decimal(15,2) DEFAULT NULL,
  `quoted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quote_requests_product_id_index` (`product_id`),
  KEY `quote_requests_customer_id_index` (`customer_id`),
  KEY `quote_requests_status_index` (`status`),
  KEY `quote_requests_email_index` (`email`),
  CONSTRAINT `quote_requests_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `ec_products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `quote_requests_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `ec_customers` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

-- Quote request statuses:
-- pending   - New request awaiting admin review
-- quoted    - Admin has provided a price quote
-- accepted  - Customer has accepted the quote
-- declined  - Customer has declined the quote
-- cancelled - Request was cancelled
