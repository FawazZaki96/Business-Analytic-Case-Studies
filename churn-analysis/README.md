# Customer Retention / Churn Analysis

## 📌 Business Problem

The business is experiencing strong order volume, but it is unclear whether customers are returning after their first purchase.

This project aims to analyze customer purchasing behavior and answer:

* How many customers are repeat vs one-time buyers?
* What is the repeat purchase rate?
* Are customers showing signs of retention over time?
* What actions can improve customer retention?

---

## 📂 Dataset

Source: Olist E-commerce Dataset

Files used:

* `orders.csv`
* `customers.csv`

Key columns:

* `order_id`
* `customer_id`
* `customer_unique_id`
* `order_purchase_timestamp`

---

## 🛠️ Methodology

### Data Preparation

* Combined `orders` and `customers` datasets using `customer_id`
* Created `order_month` column for time-based analysis
* Aggregated data at **customer level** using `customer_unique_id`

---

### Customer Analysis

* Calculated number of orders per customer
* Classified customers into:

  * **One-time customers**
  * **Repeat customers**

---

### Key Metrics

* Total Customers: **48,842**
* One-time Customers: **48,025**
* Repeat Customers: **816**
* Repeat Purchase Rate: **1.67%**

---

### Time-Based Analysis

* Analyzed monthly order trends
* Compared order volume across months to identify seasonal patterns

---

## 📊 Key Insights

### 1. Extremely Low Customer Retention

* Only **1.67%** of customers made repeat purchases
* Majority of customers purchase only once

👉 Indicates weak retention and low customer loyalty

---

### 2. Strong Seasonal Acquisition (November Spike)

* Significant increase in orders observed in **November 2017**
* Likely driven by promotions or seasonal campaigns

👉 Business is effective at acquiring customers during peak periods

---

### 3. Poor Post-Purchase Retention

* Customer activity drops after peak months
* Newly acquired customers are not returning

👉 Missed opportunity to convert new users into long-term customers

---

## 💼 Business Impact

* High dependence on **new customer acquisition**
* Increased **marketing costs**
* Low **Customer Lifetime Value (CLV)**
* Unstable and inconsistent revenue patterns

---

## 🚀 Recommendations

### 1. Introduce Customer Loyalty Program

* Reward repeat purchases with points, discounts, or incentives
* Encourage long-term engagement

---

### 2. Improve Remarketing Strategy

* Target first-time buyers with personalized follow-ups
* Use email campaigns and retargeting ads
* Convert one-time customers into repeat buyers

---

### 3. Enhance Post-Purchase Experience

* Improve customer support and communication
* Collect feedback after purchase
* Ensure a smooth and positive delivery experience

---

## 🧠 Key Skills Demonstrated

* Data Cleaning & Preparation (Excel)
* Dataset Joining (VLOOKUP)
* Customer Segmentation
* Retention & Churn Analysis
* Business Insight Generation
* Strategic Recommendations

---


