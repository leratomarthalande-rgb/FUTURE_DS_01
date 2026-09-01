# Superstore Sales Analysis & Business Intelligence Dashboard

## Project Overview

This project analyses Superstore sales data covering 2014–2017 to evaluate overall sales performance, profitability, product performance, category performance, regional contribution and sales patterns over time.

The project was completed as an end-to-end data analytics workflow using **MySQL and Power BI**. MySQL was used to inspect, validate, clean and analyse the dataset, while Power BI was used to transform the analysis into an interactive business dashboard.

The analysis focused not only on identifying where the business generated the most revenue, but also on determining whether high sales translated into strong profitability. This distinction revealed important differences between the three main product categories, as well as between individual sub-categories and regions.

---

# Business Problem

A retail business needs to understand which products, categories and regions are contributing most to revenue and profit in order to make informed decisions around sales strategy, inventory allocation and business growth.

The analysis therefore aimed to answer the following questions:

* What is the overall sales and profitability performance?
* Which product categories generate the most sales?
* Which categories generate the most profit?
* Which products are the highest contributors to revenue?
* Which regions contribute most to profit?
* How does sales performance change throughout the year?
* Which sub-categories combine strong sales and profitability?
* Are there categories generating strong sales but relatively weak profit?
* Where should the business focus its sales and growth efforts?

---

# Dataset

The Superstore dataset contains transactional sales information covering the period from **2014 to 2017**.

Key fields used during the analysis included:

* Order Date
* Sales
* Profit
* Quantity
* Discount
* Category
* Sub-Category
* Product Name
* Region
* Segment
* Customer information
* Order information

The dataset contained approximately **5,000 orders** and generated approximately **$2.30 million in total sales**.

---

# Data Quality Assessment & Preparation

Before performing any analysis, the dataset was inspected in **MySQL Workbench** to determine whether the data was suitable for analysis.

Unlike many datasets used for portfolio projects, the Superstore dataset was generally well structured. The assessment found:

* No significant missing values or `NULL` values requiring imputation
* One duplicate record, which was identified and removed
* Consistent categorical values
* No inappropriate negative sales values
* No extreme or obviously erroneous discount values
* No major data inconsistencies that would compromise the analysis

The main preparation required was therefore focused on **validation, duplicate removal and date formatting** rather than extensive data correction.

The original date field required transformation into a usable date format so that it could be reliably used for time-based analysis in SQL and Power BI.

This stage demonstrated an important part of the analytical process: **data should be assessed before cleaning is performed rather than assuming that every dataset contains extensive errors.**

---

# SQL Data Preparation & Analysis

MySQL Workbench was used as the primary environment for data validation, preparation and analysis.

The following SQL functionality was applied throughout the project:

### `SELECT`

Used to retrieve and inspect records from the dataset and examine the structure and values before analysis.

### `WHERE`

Used to filter records and investigate specific conditions within the dataset.

### `DISTINCT`

Used to examine unique values within fields and assess the consistency of categorical information.

### `DELETE`

Used to remove the identified duplicate record after confirming that it was a duplicate.

### `ALTER`

Used during data preparation to modify the structure/data type of fields, including preparing the date field for analysis.

### `CASE`

Used to apply conditional logic when transforming or categorising data for analysis.

### `GROUP BY`

Used to aggregate results by dimensions such as:

* Category
* Sub-Category
* Region
* Product
* Time periods

### `ORDER BY`

Used to rank and sort analytical results, including identifying the highest-performing products and categories.

### `SUM()`

Used extensively to calculate aggregated sales and profit values across products, categories, sub-categories and regions.

Together, these SQL operations were used to move from **record-level transactional data to business-level insights**.

---

# Power BI Dashboard

The validated dataset was imported into **Power BI** to create an interactive sales and profitability dashboard.

The dashboard provides an executive-level overview through four key performance indicators:

| KPI           |       Result |
| ------------- | -----------: |
| Total Sales   |   **$2.30M** |
| Total Profit  | **$286.40K** |
| Total Orders  |   **5.009K** |
| Profit Margin |   **12.47%** |

Additional visualisations were used to examine:

* Sales by region
* Sales by category
* Profit by category
* Sales trends over time
* Monthly sales patterns
* Top products by revenue
* Sales and profit by sub-category

The combination of these views allows overall performance to be examined before drilling down into the products and business areas driving that performance.

---

# Key Findings

## 1. Technology Was the Strongest Overall Category

Technology was the strongest-performing category in the dataset.

It generated approximately **$836.15K in sales**, representing **36.4% of total sales**.

Technology also generated the highest profit contribution of the three categories.

This makes Technology the strongest area of the business from both a **revenue and profitability perspective**.

The sales-and-profit sub-category scatter plot further reinforces this finding. The higher-performing points are concentrated around the Technology-related sub-categories, demonstrating that the strongest combination of sales and profit is found within this area of the product portfolio.

Rather than simply generating high sales, Technology demonstrates the more desirable outcome of generating **high sales together with strong profit contribution**.

---

## 2. Furniture Generated Strong Sales but Weak Profit

Furniture generated approximately **$742K in sales**, accounting for **32.3% of total sales**.

This placed Furniture second in terms of sales, and the difference between the three categories was relatively small.

However, the profit-by-category visual revealed a significant difference.

Despite its strong sales contribution, Furniture generated substantially less profit than Technology and Office Supplies.

This creates a clear profitability concern:

**Furniture is generating revenue, but that revenue is not translating into profit at the same level as the other categories.**

This makes Furniture an important area for commercial investigation, particularly around product pricing, discounts and the profitability of individual Furniture sub-categories.

---

## 3. Office Supplies Had the Lowest Sales but Strong Profit Performance

Office Supplies generated approximately **$719.05K in sales**, representing **31.3% of total sales**.

Although it was the lowest-performing category by sales, the difference between the three categories was relatively small.

More importantly, Office Supplies performed strongly in terms of profit.

This demonstrates that sales volume alone does not determine the value of a category.

Office Supplies appears to generate a comparatively strong return from its sales and should therefore remain an important part of the business's product portfolio.

---

# 4. The Sales–Profit Relationship Is Strongest in Technology

The sub-category scatter plot provides another perspective on category performance by plotting **sales against total profit**.

The visual distribution shows that the higher-sales and higher-profit sub-categories are concentrated within Technology.

This reinforces the category-level analysis: Technology is not simply generating more revenue; its products are also contributing strongly to profit.

The scatter plot is particularly useful because it highlights the difference between **high-revenue products and genuinely high-value products**.

A product or sub-category positioned high on both sales and profit represents a more attractive commercial opportunity than one generating high sales but limited profit.

---

# 5. West Was the Strongest Region by Profit

The regional analysis showed a clear ranking in profitability:

1. **West**
2. **East**
3. **South**
4. **Central**

The West region generated the highest profit contribution, while Central generated the lowest.

The difference between West and Central was substantial, indicating a significant performance gap rather than a marginal difference.

This suggests that the business could benefit from examining what is driving the West region's stronger results, including its product mix, customer segments, discount levels and sales composition.

The objective would be to identify successful practices that could be applied to weaker-performing regions.

---

# 6. Sales Increased Towards the End of the Year

The monthly sales analysis revealed a clear seasonal pattern.

January recorded the lowest sales levels, after which sales generally increased throughout the year.

From approximately **April through August**, sales remained relatively stable without a major peak.

A stronger increase became visible from around **September**, with sales continuing to rise towards the end of the year.

**December recorded the highest sales.**

This indicates that the business experiences its strongest demand during the final part of the year.

The pattern has direct implications for inventory and sales planning. The business should be prepared for increased demand before the September–December period rather than waiting until sales have already accelerated.

---

# 7. Top 5 Products by Revenue

The product-level analysis identified the following products among the highest revenue contributors:

1. **Canon imageCLASS 2200 Advanced Copier**
2. **Fellowes PB500 Electric Punch Plastic Comb Binding Machine**
3. **Cisco TelePresence System**
4. **HON 5400 Series Task Chair**
5. **GBC DocuBind TL300 Electric Binding System**

Several of these products are associated with Technology, which is consistent with the category-level finding that Technology is the strongest overall contributor.

These products represent important revenue-generating products and therefore provide potential opportunities for targeted sales and inventory strategies.

However, revenue contribution should still be considered alongside product-level profit before making decisions about further investment.

---

# 8. Sub-Category Performance Reveals Different Commercial Opportunities

The sales-versus-profit analysis by sub-category provided a more detailed view of the product portfolio.

**Phones and Copiers** appeared among the stronger-performing areas, combining relatively high sales with strong profit contribution.

Other sub-categories showed weaker combinations of sales and profit.

This analysis is important because category-level performance can hide substantial differences between individual sub-categories.

For example, the overall Furniture category performs reasonably well in terms of sales, but its weaker profitability suggests that some Furniture sub-categories or products may be generating revenue without sufficient margin.

This creates an opportunity to shift attention from simply asking:

> “What sells the most?”

to:

> “What generates the most valuable sales?”

---

# Business Recommendations

## 1. Prioritise Technology for Growth

Technology should be treated as the **primary growth category** because it leads in both sales and profit.

The business should prioritise:

* Maintaining stock availability for high-performing Technology products
* Increasing promotional focus on strong Technology products
* Protecting inventory levels during the high-demand period
* Expanding sales of Technology products that demonstrate both strong revenue and profit

The combination of high sales and high profit makes Technology the clearest category for continued commercial investment.

---

## 2. Protect and Promote the Highest-Value Products

The top revenue-generating products should receive particular attention from the sales and inventory teams.

Rather than treating all products equally, the business could prioritise products that demonstrate:

**High revenue + high profit**

These products should receive stronger inventory availability and targeted sales support because losing availability on high-value products could have a disproportionate effect on overall performance.

---

## 3. Address Furniture Profitability

Furniture should not necessarily be abandoned because it generates strong sales. Instead, the priority should be to **improve the profitability of the existing Furniture revenue base**.

The business should identify the Furniture products and sub-categories responsible for the low profit contribution and review:

* Pricing
* Discount levels
* Product costs
* Product-level margins

Where products generate substantial sales but weak profit, pricing or discount strategies should be reassessed.

The objective should be to **convert existing Furniture demand into more profitable sales** rather than simply pursuing additional volume.

---

## 4. Use West as a Benchmark for Lower-Performing Regions

The West region provides a useful benchmark because it is the strongest contributor to profit.

The business should compare West against Central in particular to identify differences in:

* Product mix
* Customer segments
* Discounting
* Sales volume
* Sub-category performance

The strongest-performing products and sales strategies in West could then be used to inform targeted growth strategies in weaker regions.

---

## 5. Prepare Early for the Year-End Sales Increase

The clear increase in sales from September through December suggests that the business should prepare inventory and sales activity **before** the peak period begins.

Sales and inventory teams should increase readiness ahead of September, with particular attention to high-performing products.

This would allow the business to take advantage of the seasonal increase in demand while reducing the risk of stock shortages during the strongest sales period.

---

# Business Impact

The analysis provides a clear commercial direction:

**Technology should be prioritised for growth, high-value products should be protected and promoted, Furniture should be targeted for margin improvement, and the West region can provide a benchmark for improving weaker regional performance.**

The seasonal trend also provides a clear planning opportunity: resources and inventory should be positioned ahead of the September–December increase in demand.

These recommendations move beyond simply describing the dataset and translate the analysis into specific actions that could improve revenue quality and profitability.

---

# Tools & Technologies

### MySQL Workbench

Used for:

* Data inspection
* Data quality assessment
* Duplicate identification and removal
* Date preparation
* Data validation
* Data transformation
* SQL aggregation
* Product analysis
* Category analysis
* Regional analysis
* Time-based analysis

### Power BI

Used for:

* KPI development
* Data visualisation
* Sales and profit analysis
* Category and regional comparisons
* Trend analysis
* Product performance analysis
* Dashboard development

---

# Skills Demonstrated

This project demonstrates practical application of:

* SQL
* Data cleaning and validation
* Data quality assessment
* Exploratory data analysis
* Data transformation
* Aggregation
* Business intelligence
* Data visualisation
* KPI development
* Trend analysis
* Product performance analysis
* Profitability analysis
* Regional analysis
* Business problem solving
* Translating data into business recommendations

---

# Project Workflow

The project followed an end-to-end analytics workflow:

**Raw Superstore Dataset**
↓
**Data Quality Assessment**
↓
**Duplicate Removal & Date Preparation**
↓
**SQL Validation & Transformation**
↓
**SQL Business Analysis**
↓
**Power BI Dashboard Development**
↓
**Identification of Business Insights**
↓
**Commercial Recommendations**

---

# Conclusion

The Superstore analysis shows that overall business performance is being driven by a combination of strong Technology performance, profitable Office Supplies sales and significant revenue generated by Furniture.

Technology is the strongest category because it combines the highest sales contribution with the highest profit contribution. Furniture, despite generating the second-highest sales contribution, requires greater attention to profitability. Office Supplies demonstrates that lower sales do not necessarily indicate lower business value, as the category remains a strong contributor to profit.

At regional level, West is the strongest profit-generating region, while Central represents the largest performance gap. At product level, several high-revenue products provide clear opportunities for targeted inventory and sales strategies.

Finally, the monthly trend indicates that demand strengthens considerably from September and peaks in December, providing a clear opportunity to prepare inventory and sales activity ahead of the year-end period.

Overall, the analysis demonstrates how **SQL can be used to validate and prepare transactional data, while Power BI can turn the resulting analysis into clear business intelligence that supports product, regional, profitability and sales decisions.**
