# Olist E-Commerce SQL Analysis

> SQL-based business analysis of the Olist Brazilian e-commerce dataset to uncover revenue, customer, product, seller, payment, review and logistics insights.

---

## 📌 Project Overview

This project analyzes the Brazilian E-Commerce Public Dataset by Olist using **SQL and Microsoft SQL Server**.

The objective was to transform raw transactional data into meaningful business insights across the complete e-commerce lifecycle — from orders and revenue to customers, products, sellers, payments, reviews and delivery performance.

The project focuses not only on writing SQL queries, but on answering **real business questions and translating analytical findings into actionable recommendations.**

---

## 🎯 Business Objective

The analysis was designed to answer key questions around:

- How is revenue growing over time?
- Which months and categories drive revenue?
- Is growth driven by higher order value or higher order volume?
- How strong is customer retention?
- Which product categories perform best?
- Which sellers contribute the most revenue?
- How do customers pay?
- What is the relationship between delivery performance and customer satisfaction?
- Where are the biggest opportunities for business improvement?

---

## 🗂️ Dataset

The project uses the **Brazilian E-Commerce Public Dataset by Olist**.

| Table | Records |
|---|---:|
| customers | 99,441 |
| orders | 99,441 |
| order_items | 112,650 |
| order_payments | 103,886 |
| order_reviews | 99,224 |
| products | 32,951 |
| sellers | 3,095 |
| product_category_translation | 71 |

The dataset represents orders placed through the Olist marketplace and contains information covering customers, orders, products, sellers, payments, reviews and logistics.

---

## 🛠️ Tools & Technologies

- **SQL**
- **Microsoft SQL Server**
- Relational Database Analysis
- Data Cleaning & Validation
- Exploratory Data Analysis
- CTEs
- Window Functions
- Complex Joins
- Aggregations
- Conditional Logic
- Business Analysis

---

# 🔍 Analysis Areas

### 1. Sales & Order Analysis

- Revenue performance
- Order volume
- Monthly and yearly trends
- Average Order Value
- Order status
- Revenue growth

### 2. Customer Analysis

- Customer distribution
- Purchase behavior
- One-time vs repeat customers
- Customer spending
- Customer retention

### 3. Product Analysis

- Category performance
- Revenue contribution
- Top-performing categories
- Order volume
- Average order value

### 4. Seller Analysis

- Seller revenue
- Seller order volume
- Revenue per order
- Seller contribution

### 5. Payment Analysis

- Payment methods
- Payment value
- Average transaction value
- Installment behavior

### 6. Review Analysis

- Review score distribution
- Customer satisfaction
- Delivery vs review performance

### 7. Logistics Analysis

- Delivery performance
- Average delivery time
- Late vs on-time orders
- Delivery delays
- Relationship between delivery and customer satisfaction

### 8. Advanced SQL Analysis

- Common Table Expressions
- Window Functions
- Ranking
- Conditional Logic
- Complex Joins
- Business-oriented analytical queries

---

# 📊 Key Business Insights

## 1. Revenue grew 157.2% year-over-year

Revenue increased from **$2.54M to $6.53M** between January–August 2017 and January–August 2018.

| Period | Revenue |
|---|---:|
| Jan–Aug 2017 | $2.54M |
| Jan–Aug 2018 | $6.53M |
| YoY Growth | **+157.2%** |

Orders increased by the same **157.2%**, while Average Order Value remained almost unchanged at approximately **$138**.

### Insight

Growth was primarily **volume-driven rather than value-driven**.

---

## 2. 2018 revenue remained significantly above 2017

Every comparable month from January to August 2018 generated substantially more revenue than the corresponding month in 2017.

The strongest 2018 month was:

**April 2018 — $996.65K**

January showed the largest YoY increase:

**+689.9%**

Growth gradually normalized as the 2018 revenue base became larger.

---

## 3. Beauty & Health was the top revenue category

The leading product categories were:

| Rank | Category | Revenue |
|---:|---|---:|
| 1 | Beauty & Health | **$1.259M** |
| 2 | Watches & Gifts | $1.205M |
| 3 | Bed/Bath/Table | $1.037M |
| 4 | Sports & Leisure | $988K |
| 5 | Computers & Accessories | $912K |

**Beauty & Health contributed approximately 9.26% of analyzed revenue.**

---

## 4. Customer retention is the biggest opportunity

Approximately **97% of analyzed customers were one-time buyers**, while only around **3% were repeat customers**.

| Customer Type | Customers | Orders | Revenue |
|---|---:|---:|---:|
| One-time | 92,507 | 92,507 | $12.83M |
| Repeat | 2,913 | 6,159 | $763K |

### Insight

The platform demonstrates strong customer acquisition but relatively weak repeat purchasing.

This makes **customer retention and customer lifetime value** major opportunities for improvement.

---

## 5. Delivery performance strongly affects satisfaction

| Delivery Status | Average Review |
|---|---:|
| On Time | **4.29 / 5** |
| Late | **2.57 / 5** |

This represents a **1.73-point satisfaction gap**.

Overall:

- **91.89%** of orders were delivered on time
- **8.11%** were late

### Insight

Reducing delivery delays is not only a logistics objective — it is directly connected to customer experience.

---

## 6. Revenue leaders are not always volume leaders

Seller performance showed significant differences between revenue and order volume.

For example, one seller generated approximately **$223K from only 358 orders**, while another generated approximately **$200K from 1,806 orders**.

### Insight

Seller performance should be evaluated using multiple metrics rather than revenue alone:

- Revenue
- Orders
- Revenue per order
- Delivery performance
- Customer satisfaction

---

# 💡 Business Recommendations

## 1. Improve Customer Retention

With approximately 97% of customers purchasing only once, increasing repeat purchases represents the largest opportunity.

Recommended actions:

- Personalized post-purchase campaigns
- Product recommendations
- Cross-selling
- Loyalty incentives
- Targeted repeat-purchase offers
- Re-engagement campaigns for high-value one-time customers

---

## 2. Reduce Late Deliveries

Late orders received an average review score of only **2.57/5** compared with **4.29/5** for on-time orders.

Recommended actions:

- Identify sellers with recurring delays
- Monitor delivery performance by region
- Improve delivery-time estimates
- Flag high-risk shipments
- Investigate recurring logistics bottlenecks

---

## 3. Increase Customer Value

Revenue increased by 157.2%, while AOV remained approximately flat.

Future growth should therefore focus not only on acquiring more orders, but also on increasing the value of each customer.

Potential strategies:

- Product bundles
- Cross-category recommendations
- Premium product promotion
- Personalized offers
- Repeat-purchase incentives

---

## 4. Prioritize High-Performing Categories

Beauty & Health, Watches & Gifts and Bed/Bath/Table were among the strongest revenue categories.

The business could prioritize these categories through:

- Inventory availability
- Seller quality monitoring
- Targeted promotions
- Cross-selling
- Category-specific campaigns

---

# 📈 Strategic Takeaway

The analysis suggests that Olist has successfully demonstrated **strong demand and rapid revenue growth**.

However, the next stage of growth should focus on improving the **quality and value of existing customer relationships**, rather than relying solely on additional transaction volume.

### The four biggest opportunities are:

**1. Retention**  
Convert one-time customers into repeat buyers.

**2. Delivery**  
Reduce late deliveries and protect customer satisfaction.

**3. Customer Value**  
Increase revenue per customer through cross-selling and repeat purchases.

**4. Category & Seller Optimization**  
Focus resources on proven high-performing categories and sellers.

> **Olist has demonstrated that it can generate demand. The next opportunity is turning that demand into stronger retention, higher customer value and more reliable customer experiences.**

---

# 📁 Repository Structure

```text
olist-ecommerce-sql-analysis/
│
├── README.md
│
├── sql/
│   ├── 01_database_setup.sql
│   ├── 02_data_validation.sql
│   ├── 03_sales_analysis.sql
│   ├── 04_customer_analysis.sql
│   ├── 05_product_analysis.sql
│   ├── 06_seller_analysis.sql
│   ├── 07_payment_analysis.sql
│   ├── 08_review_analysis.sql
│   ├── 09_logistics_analysis.sql
│   └── 10_advanced_analysis.sql
│
├── documentation/
│   └── business_insights.md
│
└── images/