# Global E-Commerce Sales Analysis

This project presents an end-to-end data analysis pipeline of global e-commerce transactions, using **MySQL** for initial querying, **Python** for deeper analytics, and **Power BI** for dashboard creation. It is based on a publicly available dataset from [Kaggle](https://www.kaggle.com/datasets/tyagi586/global-e-commerce-sales).

## Table of Contents
- [Project Overview](#project-overview)
- [Dataset Description](#dataset-description)
- [Tools & Technologies](#tools--technologies)
- [Analysis Pipeline](#analysis-pipeline)
- [Key Insights](#key-insights)
- [Power BI Dashboards](#power-bi-dashboards)
- [Business Recommendations](#business-recommendations)
- [Getting Started](#getting-started)
- [Appendix](#appendix)

---

## Project Overview

This data analytics project involves:
- Performing SQL queries on transaction data
- Conducting in-depth Python analysis
- Visualizing business performance using Power BI
- Generating actionable business recommendations

---

## Dataset Description

| Column Name       | Description                                     |
|-------------------|-------------------------------------------------|
| `transaction_date`| Date of transaction                             |
| `customer_id`     | Unique customer identifier                      |
| `region`          | Geographic location                             |
| `product_id`      | Unique product identifier                       |
| `category`        | Product category                                |
| `price`           | Unit price of product                           |
| `quantity`        | Number of units sold                            |
| `discount`        | Discount applied                                |
| `total_revenue`   | Net revenue after discount                      |
| `payment_method`  | Method used for payment                         |

---

## Tools & Technologies

- **Database**: MySQL 8.0
- **Programming Language**: Python 3.10
  - Libraries: `pandas`, `matplotlib`, `seaborn`, `numpy`
- **Visualization**: Power BI Desktop
- **Version Control**: Git/GitHub

---

## Analysis Pipeline

### SQL Analysis
- Table creation, data import, and validation
- Revenue trend analysis, category performance, customer ranking
- Payment behavior and regional breakdowns

### Python Analysis
- Data transformation and cleaning
- Exploratory Data Analysis (EDA)
- Feature engineering and segmentation
- Visual storytelling using `matplotlib` and `seaborn`

### Power BI Dashboards
- Building interactive visuals for stakeholders
- KPI summaries, regional maps, discount trends
- Segment-based insights for campaign planning

### Final Reporting
- Business recommendations
- Deliverables: Power BI report, SQL scripts, Python notebook

---

## Key Insights

- VIP customers contributed disproportionately to revenue
- Some regions significantly outperformed others
- Discounting had mixed effects on revenue vs. volume
- Payment preference varied by region and revenue tiers
- Product categories varied widely in margin and volume

---

## Power BI Dashboards

> Dashboards were designed around four core views:
1. **Executive Overview**
2. **Product & Category Analysis**
3. **Customer Segmentation**
4. **Regional & Discount Patterns**

*(Screenshots and `.pbix` file can be found in the `/powerbi` folder)*

---

## Business Recommendations

- Prioritize high-value customers with loyalty campaigns
- Optimize regional marketing spend based on performance
- Apply smarter discounting to boost profit margins
- Expand products in high-margin, high-demand categories

---

## Getting Started

### Clone the Repository
```bash
git clone https://github.com/ayeni01/ecommerce-sales-analysis.git
cd ecommerce-sales-analysis
