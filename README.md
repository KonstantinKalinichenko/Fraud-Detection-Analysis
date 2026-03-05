# Fraud Traffic Anomaly Detection

## Project Overview

This project analyzes a dataset of web traffic logs in order to identify abnormal patterns and potential fraudulent activity across multiple website domains.

The dataset contains sampled traffic logs from several domains. The objective of the analysis is to explore the data, detect unusual patterns, and determine whether any of the domains exhibit suspicious behavior that could indicate automated traffic, manipulation, or other forms of invalid activity.

The analysis focuses on identifying anomalies in traffic distribution, device usage, geographic patterns, and hourly activity.

---

## Dataset Description

The dataset represents a sample of traffic logs from several website domains. Each domain contains a set of user activity records with the following fields:

| Column      | Description                                                                  |
| ----------- | ---------------------------------------------------------------------------- |
| UserId      | Unique identifier representing a user (similar to a cookie)                  |
| DeviceModel | Device model used by the visitor (relevant mainly for mobile/tablet devices) |
| Browser     | Web browser used by the visitor                                              |
| OS          | Operating system of the device                                               |
| UserAgent   | HTTP user agent string containing browser and device information             |
| IP          | IPv4 address of the visitor                                                  |
| IPCountry   | Country inferred from the IP address                                         |
| Site        | Website domain visited                                                       |
| HourId      | Hour of the visit (0–23), adjusted to local time by country                  |

Each site contains a random sample of traffic entries.

---

## Analysis Approach

The analysis was performed in several stages:

1. Data exploration and aggregation to understand the distribution of traffic across domains.
2. Investigation of potential anomalies in:

   * traffic volume by site
   * hourly activity patterns
   * geographic distribution of traffic
   * device and browser distribution
3. Identification of unusual patterns that may indicate suspicious or automated traffic behavior.

SQL queries were used to aggregate and filter the dataset, while Excel was used to perform exploratory analysis and build pivot tables and visualizations.

---

## Tools Used

**SQL (PostgreSQL)**

* creation of the database table schema
* data aggregation and filtering
* traffic distribution analysis
* identification of suspicious patterns

**Excel**

* exploratory data analysis
* pivot tables
* quick aggregation and comparison across domains
* basic visualizations of traffic patterns

---

## Repository Structure

```
fraud-traffic-anomaly-detection
│
├── data/
│   └── traffic_sample.csv
│
├── sql/
│   ├── schema.sql
│   └── analysis_queries.sql
│
├── analysis/
│
├── charts/
│
└── README.md
```

* **data/** – raw dataset used for analysis
* **sql/** – SQL schema and analysis queries
* **analysis/** – additional analysis artifacts (if applicable)
* **charts/** – visualizations generated during analysis

---

## Key Findings

(To be completed)

This section will summarize the main insights discovered during the investigation and highlight domains that exhibit abnormal or suspicious traffic patterns.

---

## Purpose of the Project

This project demonstrates a practical data analysis workflow commonly used in fraud detection and traffic quality analysis, combining SQL-based data investigation with spreadsheet-based exploratory analysis.
