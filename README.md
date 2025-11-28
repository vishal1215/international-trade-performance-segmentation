# 🌍 International Trade Performance & Segmentation – Power BI Report

*A multi-page Power BI analytics solution for assessing global trade performance and classifying countries using R-based segmentation.*

## 🤠 Overview
This project presents a comprehensive Power BI dashboard that evaluates international trade performance using curated datasets, custom metrics, and clustering techniques. The solution combines:

- Structured trade indicators from multiple sources
- Multi-page interactive visuals
- DAX-driven KPI engine
- Power Query transformations
- Integrated R scripts for country segmentation

The result is an insight-driven analytics tool enabling analysts, economists, and policy advisors to explore competitiveness, vulnerabilities, and market opportunities.

## 💻 Repository Structure
```
international-trade-performance-segmentation/
│
├─ README.md
│
├─ dashboard/
│   ├─ international_trade_dashboard.pbix
│   └─ r_script_segmentation.R
│
├─ data/
│   └─ ... (CSV files used as inputs)
│
├─ visuals/
│   ├─ page_overview.png
│   ├─ page_trade_gdp.png
│   ├─ page_market_performance.png
│   ├─ page_cluster_analysis.png
│   └─ page_gdp_forecast.png
│
└─ docs/
    └─ project_summary.pdf
```

## 🛠 Data Modelling & Transformations
### Power Query (M)
- Cleaned inconsistent country names and merged multiple datasets
- Handled missing trade values and normalised indicators (per-capita, percent-share, ratios)
- Established a star-schema-style model with fact and dimension tables

### Star Schema Overview
- **Fact Table:** Trade volumes, import/export flows, KPI inputs
- **Dimensions:** Country, Region, Year, Product Category, Metric Type

## 🗐 Custom DAX Metrics
Key measures implemented in the report include:

- `Trade Openness = (Exports + Imports) / GDP`
- `Export Intensity = Exports / Total Trade`
- `Import Dependency Ratio`
- `YoY Export Growth`
- `Diversification Index`
- `Investment score`

These metrics allow robust comparison across countries and regions.

## 📊 Dashboard Pages
### 1⃣️ Global Trade Picture
High-level overview of world trade flows, trade status map, and global KPIs.

### 2⃣️ Trade & GDP
Year-wise exports/imports, GDP growth trends, tariff rates, trade openness vs world benchmark, FDI per capita.

### 3⃣️ Market Performance
Regional export distribution, product category breakdown, and top countries by exports/imports.

### 4⃣️ Cluster Analysis
R-driven segmentation of countries into market archetypes; key influencers of investment score; scatter plots of market size vs trade activity.

### 5⃣️ GDP Forecast
Investment score vs GDP forecast growth; highlights top 5 countries to invest.

## 🔬 R Script Integration
Power BI uses an embedded R script (`dashboard/r_script_segmentation.R`) to:

- Perform k-means clustering on selected trade metrics
- Reduce dimensionality using PCA
- Assign clusters to countries and export the results back to Power BI

## 🤓 Key Insights
- Countries cluster into four distinct trade profiles, shaped by diversification and openness.
- High tariff rates correlate with lower trade volumes and market integration.
- Emerging economies show rapid export and GDP growth but remain vulnerable to trade shocks.
- Diversified markets demonstrate greater resilience and investment potential.

## 🚀 How to Use
1. Download the `.pbix` file from `dashboard/` and open it with **Power BI Desktop (Oct 2025 or newer)**.
2. If R visuals are enabled, ensure you have **R installed** on your machine.
3. Explore the pages, slicers, and drill-throughs to interact with the data.

> **Data Sources:** Due to licensing, the raw CSV files are not included in this public repository. The report was built using publicly available trade statistics (exports, imports, tariffs, FDI) aggregated from international databases.

## 💚 Tech Stack
Power BI Desktop • Power Query (M) • DAX • R • Data Modelling • Data Visualization

---

This repository showcases how business intelligence tools, advanced metrics, and R-powered clustering can be combined to deliver actionable insights into international trade performance.
