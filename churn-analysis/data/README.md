# Data Description

Due to file size limitations, the original dataset is not uploaded to this repository.

## 📂 Data Source

This project uses the **Olist E-commerce Dataset**, which is publicly available.

You can download the dataset here:
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

## 📊 Files Used

* orders.csv
* customers.csv

## 🛠️ Data Preparation Steps

* Selected relevant columns:

  * order_id
  * customer_id
  * order_purchase_timestamp
* Joined with customers dataset to obtain:

  * customer_unique_id
* Created:

  * order_month column
* Aggregated data at customer level to calculate purchase frequency

## 🧠 Note

This approach keeps the repository lightweight while allowing full reproducibility.

