CREATE TABLE IF NOT EXISTS `users` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `last_name` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `gender` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0 => female, 1 => male',
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `phone` VARCHAR(11) UNIQUE NOT NULL,
    `email` VARCHAR(255) UNIQUE NOT NULL,
    `password` VARCHAR(64) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `verification_code` BIGINT(20) UNSIGNED UNIQUE NULL DEFAULT NULL,
    `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `brands` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NULL DEFAULT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
);
CREATE TABLE IF NOT EXISTS `categories` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
);

CREATE TABLE IF NOT EXISTS `subcategories` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `category_id` BIGINT(20) UNSIGNED NOT NULL,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY(`category_id`) REFERENCES `category`(`id`)
);
CREATE TABLE IF NOT EXISTS `products` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `brand_id` BIGINT(20) UNSIGNED NOT NULL,
    `subcategory_id` BIGINT(20) UNSIGNED NOT NULL,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `price` DECIMAL(8, 2) UNSIGNED NOT NULL,
    `code` BIGINT(20) UNSIGNED UNIQUE NOT NULL,
    `details_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `details_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `quantity` SMALLINT(4) UNSIGNED NOT NULL DEFAULT 1,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY(`brand_id`) REFERENCES `brands`(`id`),
    FOREIGN KEY(`subcategory_id`) REFERENCES `subcategories`(`id`),
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `cities` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `regions` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `city_id` BIGINT(20) UNSIGNED NOT NULL,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`city_id`) REFERENCES `cities`(`id`)
);

CREATE TABLE IF NOT EXISTS `addresses` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `region_id` BIGINT(20) UNSIGNED NOT NULL,
    `building` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `floor` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `flat` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `street` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `notes` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NULL DEFAULT NULL,
    `type` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`region_id`) REFERENCES `regions`(`id`)
);

CREATE TABLE IF NOT EXISTS `coupons` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `start_at` TIMESTAMP NULL DEFAULT NULL,
    `end_at` TIMESTAMP NULL DEFAULT NULL,
    `discount` DECIMAL(6, 2) NOT NULL,
    `discount_type` VARCHAR(8) NOT NULL,
    `mini_order_price` DECIMAL(8, 2) NOT NULL,
    `max_usage_count_per_user` SMALLINT(6) UNSIGNED NOT NULL,
    `max_usage_count` SMALLINT(6) UNSIGNED NOT NULL,
    `code` BIGINT(20) UNSIGNED NULL DEFAULT NULL UNIQUE,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `orders` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `address_id` BIGINT(20) UNSIGNED NOT NULL,
    `coupon_id` BIGINT(20) UNSIGNED NOT NULL,
    `notes` VARCHAR(255) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `total_price` DECIMAL(8, 2) UNSIGNED NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `delivered_at` TIMESTAMP NULL DEFAULT NULL,
    `payment_methods` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `number` BIGINT(20) UNSIGNED UNIQUE NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`),
    FOREIGN KEY(`address_id`) REFERENCES `addresses`(`id`),
    FOREIGN KEY(`coupon_id`) REFERENCES `coupons`(`id`)
);

CREATE TABLE IF NOT EXISTS `offers` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `title_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `title_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `discount` DECIMAL(6, 2) NOT NULL,
    `discount_type` VARCHAR(8) NOT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `start_at` TIMESTAMP NULL DEFAULT NULL,
    `end_at` TIMESTAMP NULL DEFAULT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `specs` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `name_ar` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `name_en` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    PRIMARY KEY(`id`)
);

CREATE TABLE IF NOT EXISTS `spec_product` (
    `spec_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    `value` VARCHAR(255) NOT NULL,
    FOREIGN KEY(`product_id`) REFERENCES `products`(`id`),
    FOREIGN KEY(`spec_id`) REFERENCES `specs`(`id`),
    PRIMARY KEY(`spec_id`, `product_id`)
);

CREATE TABLE IF NOT EXISTS `reviews` (
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    `comment` VARCHAR(255) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NULL DEFAULT NULL,
    `rate` TINYINT(1) UNSIGNED NOT NULL,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`product_id`) REFERENCES `products`(`id`)
);

CREATE TABLE IF NOT EXISTS `cart` (
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    `quantity` SMALLINT(4) UNSIGNED NOT NULL DEFAULT 0,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`product_id`) REFERENCES `products`(`id`),
    PRIMARY KEY(`user_id`, `product_id`)
);

CREATE TABLE IF NOT EXISTS `favs` (
    `user_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    FOREIGN KEY(`user_id`) REFERENCES `users`(`id`),
    FOREIGN KEY(`product_id`) REFERENCES `products`(`id`),
    PRIMARY KEY(`user_id`, `product_id`)
);

CREATE TABLE IF NOT EXISTS `offer_product` (
    `offer_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    `price_after_discount` DECIMAL(8, 2) UNSIGNED NOT NULL,
    FOREIGN KEY(`product_id`) REFERENCES `products`(`id`),
    FOREIGN KEY(`offer_id`) REFERENCES `offers`(`id`),
    PRIMARY KEY(`offer_id`, `product_id`)
);

CREATE TABLE IF NOT EXISTS `order_product` (
    `order_id` BIGINT(20) UNSIGNED NOT NULL,
    `product_id` BIGINT(20) UNSIGNED NOT NULL,
    FOREIGN KEY(`product_id`) REFERENCES `products`(`id`),
    FOREIGN KEY(`order_id`) REFERENCES `orders`(`id`),
    PRIMARY KEY(`product_id`, `order_id`)
);

CREATE TABLE IF NOT EXISTS `admins` (
    `id` BIGINT(20) UNSIGNED UNIQUE NOT NULL AUTO_INCREMENT,
    `first_name` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `last_name` VARCHAR(32) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `gender` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1 COMMENT '0 => female, 1 => male',
    `image` VARCHAR(128) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `phone` VARCHAR(11) UNIQUE NOT NULL,
    `email` VARCHAR(255) UNIQUE NOT NULL,
    `password` VARCHAR(64) CHARACTER SET `utf8` COLLATE `utf8_general_ci` NOT NULL,
    `verification_code` BIGINT(20) UNSIGNED UNIQUE NULL DEFAULT NULL,
    `email_verified_at` TIMESTAMP NULL DEFAULT NULL,
    `status` TINYINT(1) UNSIGNED NOT NULL DEFAULT 1,
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    PRIMARY KEY(`id`)
);