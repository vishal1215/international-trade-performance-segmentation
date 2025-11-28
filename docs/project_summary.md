# International Trade Performance & Segmentation – Project Summary

## Overview
This document describes the methodology and key insights from the International
Trade Performance & Segmentation analytics project. The purpose is to evaluate
the trade performance of countries, uncover patterns, and classify countries
into segments using Power BI with integrated R clustering.

## Data Sources
The project draws on a combination of public data sources:

* **UN Comtrade** – Annual exports and imports by country and product category.
* **World Bank Open Data** – GDP, GDP per capita, trade‐to‐GDP ratios,
  tariff rates and FDI flows.
* **OECD Statistics** – Tariff and trade policy indicators.

These datasets were cleaned, audited and merged into a single combined dataset
that served as the basis for analysis. Metadata fields were standardised and
country identifiers harmonised to facilitate joins across sources.

## Data Modelling & Transformation
The combined dataset was modelled using a star‐schema approach with a fact
table for trade values and dimension tables for country, year and indicator
lookups. Power Query (M) was used to:

* Resolve inconsistent country names and codes.
* Handle missing values via appropriate imputations.
* Derive metrics such as trade openness, export intensity, import dependency
  and diversification indices.
* Normalise metrics for comparability across countries and over time.

## Metrics & Analytics
Custom DAX measures were created in Power BI to capture key trade indicators:

* **Trade openness** = (exports + imports) / GDP.
* **Export intensity** = exports / total trade.
* **Import dependency** = imports / total trade.
* **Year‐on‐year growth rates** for trade flows and GDP.
* **Average tariff rates** and **FDI per capita**.

These measures power the visuals and KPIs throughout the dashboard, enabling
users to benchmark countries against one another and against the global
average.

## Segmentation Methodology
An R script (see `dashboard/r_script_segmentation.R`) was integrated into
Power BI to perform k‐means clustering on selected trade performance metrics
(trade openness, export share, import share, tariff rate and FDI score).
After scaling the features, countries were segmented into four archetypes:

1. **Developing Markets** – Low openness and high tariff rates.
2. **Emerging Mid‐Market Economies** – Moderate openness with balanced trade
   shares.
3. **Established Powers** – High openness and diversified export portfolios.
4. **Global FDI Gateways** – Very high openness and strong FDI inflows.

The segmentation helps identify common characteristics among groups of
countries and supports targeted policy and investment strategies.

## Insights
The analysis yielded several high‐level findings:

* Countries with diversified export portfolios and high trade openness exhibit
  greater resilience to economic shocks.
* Elevated tariff rates are associated with lower trade volumes and hinder
  market integration.
* Emerging economies show rapid growth in exports and GDP forecasts,
  presenting attractive investment opportunities.
* The segmentation reveals clusters that require different policy and
  investment approaches.

## Conclusion
The International Trade Performance & Segmentation project demonstrates how
Power BI, combined with robust data modelling and R‐based analytics, can
deliver actionable insights for policymakers, investors and trade analysts.
The dashboard offers interactive exploration of trade metrics, performance
trends and country clusters, enabling data‐driven decision‐making in the
global marketplace.
