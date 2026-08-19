# Olist E-Commerce Data Dictionary

## Overview

The Olist Brazilian E-Commerce Public Dataset contains information about orders, customers, products, sellers, payments, reviews, and related transactions.

The project uses eight relational tables.

---

## Tables

| Table | Description | Records |
|---|---|---:|
| customers | Customer information and location | 99,441 |
| orders | Order-level information and timestamps | 99,441 |
| order_items | Products and sellers associated with orders | 112,650 |
| order_payments | Payment information for orders | 103,886 |
| order_reviews | Customer review information | 99,224 |
| products | Product-level information | 32,951 |
| sellers | Seller information and location | 3,095 |
| product_category_translation | Portuguese-to-English product category translation | 71 |

---

## Key Relationships

- `customers.customer_id` → `orders.customer_id`
- `orders.order_id` → `order_items.order_id`
- `orders.order_id` → `order_payments.order_id`
- `orders.order_id` → `order_reviews.order_id`
- `order_items.product_id` → `products.product_id`
- `order_items.seller_id` → `sellers.seller_id`
- `products.product_category_name` → `product_category_translation.product_category_name`

---

## Notes

The raw Olist dataset is not included in this repository. The repository contains the SQL analysis, documentation, and supporting project assets.