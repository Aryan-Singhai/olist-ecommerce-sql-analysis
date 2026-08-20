# Olist E-Commerce Business Analysis

A SQL-based business analysis of the Brazilian E-Commerce Public Dataset by Olist, covering revenue, customers, products, sellers, payments, reviews and logistics.

**🌐 Portfolio:** [View the project on my portfolio](https://aryan-singhai.github.io/olist-ecommerce-analysis.html)

---

## 📌 Project Overview

This project uses **SQL and Microsoft SQL Server** to transform raw e-commerce transactions into business insights. The analysis follows the customer and order lifecycle from revenue generation through purchasing behavior, seller performance, delivery and customer satisfaction.

The focus is not only on writing SQL queries, but on answering practical business questions and translating findings into recommendations.

## 🎯 Business Questions

- How is revenue growing over time?
- Which months and categories drive revenue?
- Is growth driven by order volume or order value?
- How strong is customer retention?
- Which categories and sellers perform best?
- How do customers pay?
- How does delivery performance relate to customer satisfaction?
- Where are the biggest opportunities for improvement?

## 🗂️ Dataset

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

## 🛠️ Tools & Technologies

- SQL
- Microsoft SQL Server
- Relational database analysis
- Data cleaning & validation
- Exploratory data analysis
- CTEs
- Window functions
- Complex joins
- Aggregations
- Conditional logic
- Business analysis

## 🔍 Analysis Areas

### 1. Sales & Order Analysis
Revenue, order volume, monthly/yearly trends, AOV, order status and growth.

### 2. Customer Analysis
Customer distribution, purchase behavior, one-time vs repeat customers, spending and retention.

### 3. Product Analysis
Category performance, revenue contribution, order volume and average order value.

### 4. Seller Analysis
Seller revenue, order volume, revenue per order and seller contribution.

### 5. Payment Analysis
Payment methods, payment value, average transaction value and installment behavior.

### 6. Review Analysis
Review score distribution, customer satisfaction and delivery vs review performance.

### 7. Logistics Analysis
Delivery time, on-time vs late orders, delays and their relationship with satisfaction.

### 8. Advanced SQL Analysis
CTEs, window functions, ranking, conditional logic, complex joins and business-oriented analytical queries.

---

# 📊 Key Business Insights

## 1. Revenue grew 157.2% year-over-year

Revenue increased from **$2.54M to $6.53M** between January–August 2017 and January–August 2018.

| Period | Revenue |
|---|---:|
| Jan–Aug 2017 | $2.54M |
| Jan–Aug 2018 | $6.53M |
| YoY Growth | **+157.2%** |

Orders increased by the same **157.2%**, while AOV remained approximately **$138**, indicating volume-driven growth.

## 2. 2018 revenue remained significantly above 2017

Every comparable month from January to August 2018 generated substantially more revenue than the corresponding month in 2017.

**April 2018:** $996.65K — strongest 2018 month.  
**January:** +689.9% YoY — largest comparable monthly increase.

## 3. Beauty & Health was the top revenue category

| Rank | Category | Revenue |
|---:|---|---:|
| 1 | Beauty & Health | **$1.259M** |
| 2 | Watches & Gifts | $1.205M |
| 3 | Bed/Bath/Table | $1.037M |
| 4 | Sports & Leisure | $988K |
| 5 | Computers & Accessories | $912K |

Beauty & Health contributed approximately **9.26%** of analyzed revenue.

## 4. Customer retention is a major opportunity

Approximately **97% of analyzed customers were one-time buyers**, while only around **3% were repeat customers**.

| Customer Type | Customers | Orders | Revenue |
|---|---:|---:|---:|
| One-time | 92,507 | 92,507 | $12.83M |
| Repeat | 2,913 | 6,159 | $763K |

The platform demonstrates strong acquisition but relatively weak repeat purchasing, making retention and customer lifetime value important opportunities.

## 5. Delivery performance strongly affects satisfaction

| Delivery Status | Average Review |
|---|---:|
| On Time | **4.29 / 5** |
| Late | **2.57 / 5** |

This is a **1.73-point satisfaction gap**. Overall, **91.89%** of orders were on time and **8.11%** were late.

Delivery reliability is therefore both a logistics and customer-experience priority.

## 6. Revenue leaders are not always volume leaders

Seller performance varies substantially by revenue and order volume. One seller generated approximately **$223K from 358 orders**, while another generated approximately **$200K from 1,806 orders**.

Seller performance should therefore be evaluated using multiple metrics: revenue, orders, revenue per order, delivery performance and customer satisfaction.

---

# 💡 Business Recommendations

### 1. Improve Customer Retention

Use personalized post-purchase campaigns, recommendations, cross-selling, loyalty incentives and re-engagement offers to increase repeat purchasing.

### 2. Reduce Late Deliveries

Identify recurring seller and regional delays, improve delivery estimates, flag high-risk shipments and investigate logistics bottlenecks.

### 3. Increase Customer Value

Since revenue growth has been largely volume-driven while AOV remains stable, focus on bundles, cross-category recommendations, premium products and repeat-purchase incentives.

### 4. Prioritize High-Performing Categories & Sellers

Use category and seller performance to guide inventory, promotions, seller quality monitoring and targeted campaigns.

---

# 📈 Strategic Takeaway

Olist demonstrates strong demand and rapid revenue growth. The next stage of growth should focus on improving the **quality and value of existing customer relationships**, rather than relying solely on additional transaction volume.

**Four biggest opportunities:**

1. **Retention** — convert one-time customers into repeat buyers.
2. **Delivery** — reduce late deliveries and protect customer satisfaction.
3. **Customer Value** — increase revenue per customer through cross-selling and repeat purchases.
4. **Category & Seller Optimization** — focus resources on proven high-performing areas.

> **Olist has demonstrated that it can generate demand. The next opportunity is turning that demand into stronger retention, higher customer value and more reliable customer experiences.**

---

# 📁 Repository Structure

```text
olist-ecommerce-sql-analysis/
│
├── README.md
├── sql/
│   ├── 01_data_validation.sql
│   ├── 02_revenue_analysis.sql
│   ├── 03_customer_analysis.sql
│   ├── 04_product_analysis.sql
│   ├── 05_seller_analysis.sql
│   ├── 06_payment_analysis.sql
│   └── 07_delivery_review_analysis.sql
│
├── documentation/
│   ├── business_insights.md
│   └── data_dictionary.md
│
└── images/
```

## 🚀 Analytics Journey

This is **Project 02** in my analytics portfolio, following an Excel-based sales dashboard and leading into Power BI and an eventual end-to-end analytics project.

**Excel → SQL → Power BI → End-to-End Analytics**

---

**Portfolio:** [aryan-singhai.github.io](https://aryan-singhai.github.io/)  
**GitHub:** [github.com/Aryan-Singhai](https://github.com/Aryan-Singhai)  
**LinkedIn:** [linkedin.com/in/aryan-singhai](https://www.linkedin.com/in/aryan-singhai/)
