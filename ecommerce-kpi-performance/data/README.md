# Data Notes

## Dataset Source
This project uses the **Brazilian Ecommerce Public Dataset by Olist**.

Source:
https://www.kaggle.com/datasets/olistbr/brazilian-ecommerce

---

## Files Used
To keep the project focused only the following files were used:

- `orders.csv`
- `order_items.csv`

---

## Data Preparation Steps
The following steps were completed in Excel:

1. Loaded `orders.csv` and `order_items.csv`
2. Joined the two datasets using `order_id`
3. Added `order_purchase_timestamp` to the order items data using `VLOOKUP`
4. Created a `revenue` column:
   - `price + freight_value`
5. Created an `order_month` column for monthly KPI analysis

---

## Why Only These Files Were Used
The full dataset contains multiple related tables, but this project focuses only on the data needed for a beginner-friendly KPI performance analysis.

---

## Notes
The cleaned working file was used for analysis in Excel and Pivot Tables, but is not uploaded due to file size limitations.
