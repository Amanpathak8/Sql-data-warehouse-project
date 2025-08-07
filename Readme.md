
# 📊 Modern SQL Data Warehouse for Sales Analytics  
A comprehensive, end-to-end data warehousing solution built using **Microsoft SQL Server**. This project demonstrates the complete lifecycle of developing a **modern data warehouse** from scratch — from raw data ingestion to business-ready reporting layers. Designed with best practices in **data architecture**, **ETL development**, **data modeling**, and **data cleansing**, this project is ideal for showcasing data engineering skills.

---

## 📖 Table of Contents
- [🎯 Project Goal](#-project-goal)  
- [✨ Key Concepts & Skills Demonstrated](#-key-concepts--skills-demonstrated)  
- [🏗️ Data Architecture](#-data-architecture)  
- [⭐ Data Model (Star Schema)](#-data-model-star-schema)  
- [💻 Technology Stack](#-technology-stack)  
- [📬 Contact](#-contact)

---

## 🎯 Project Goal

The goal of this project is to design and implement a **robust, scalable SQL-based data warehouse** that consolidates data from **two source systems** — an ERP and a CRM — into a unified, analytical-ready format.

**Objectives:**
- Develop a modern, layered data architecture (Medallion architecture).
- Build ETL pipelines for data ingestion, cleansing, integration, and transformation.
- Design and implement a **Star Schema** for optimized analytical queries.
- Document the process from raw data to final reporting views.

The final warehouse acts as a **single source of truth**, enabling efficient reporting and data-driven decision-making.

---

## ✨ Key Concepts & Skills Demonstrated

### 🧱 Data Architecture
- **Medallion Architecture (Bronze, Silver, Gold layers)** for data quality assurance and progressive refinement.

### 🔄 ETL Development
- **Extract:** Bulk loading from flat files (.csv).
- **Transform:**  
  - Data cleansing: Handle NULLs, duplicates, invalid values, and formatting inconsistencies.  
  - Data standardization: Convert coded values into meaningful representations (e.g., `M` → `Male`).  
  - Data integration: Merge ERP and CRM datasets.  
  - Derived columns: Apply business logic and calculated metrics.
- **Load:** Batch inserts via stored procedures using a full load strategy (`TRUNCATE + INSERT`).

### 🧠 Advanced SQL
- Window Functions, Subqueries, and Complex JOIN operations.

### 🗂️ Data Modeling
- **Star Schema** implementation with Fact and Dimension tables designed for BI tools.

### 🛠️ Database Engineering
- Creating schemas, tables, views, and stored procedures for streamlined development and maintainability.

### 📋 Project Management
- Clear project phases: planning, execution, documentation, and deployment.

---

## 🏗️ Data Architecture

This project follows the **Medallion Architecture**, dividing the data flow into three distinct logical layers for reliability, reusability, and auditability.

![Data Architecture](https://github.com/Amanpathak8/Sql-data-warehouse-project/blob/main/docs/data_architecture.png)

### 🥉 Bronze Layer (Raw Data)
- **Purpose:** Initial landing zone for source data with no transformations.
- **Objects:** Tables.
- **Benefit:** Retains a historical snapshot and supports full data lineage.

### 🥈 Silver Layer (Cleansed Data)
- **Purpose:** Cleansed and standardized data ready for analysis.
- **Objects:** Tables.
- **Benefit:** Ensures quality data for analysts and downstream processing.

### 🥇 Gold Layer (Business Data)
- **Purpose:** Final reporting-ready data with business context.
- **Objects:** Views.
- **Data Model:** Star Schema.
- **Benefit:** Fast, efficient querying for dashboards and reporting tools.

---

## ⭐ Data Model (Star Schema)

The **Gold Layer** features a classic **Star Schema** model, optimized for analytical workloads.

![Data Model](https://github.com/Amanpathak8/Sql-data-warehouse-project/blob/main/docs/data_model.png)

### 🔹 Fact Table
- **`fact_sales`**: Stores quantitative data such as sales amount, quantity, and references to dimensions via foreign keys.

### 🔸 Dimension Tables
- **`dim_customers`**: Contains customer attributes like name, gender, region, etc.
- **`dim_products`**: Stores product-related metadata such as product category, name, and pricing.

---

## 💻 Technology Stack

| Tool              | Purpose                                       |
|-------------------|-----------------------------------------------|
| **SQL Server**    | Database engine for warehouse implementation  |
| **SSMS**          | SQL development and administrative tasks      |
| **Git & GitHub**  | Version control and source code repository    |
| **Markdown**      | Documentation for clarity and professionalism |

---

## 📬 Contact

**Aman Pathak**  
Email Amanpathak8802@gmail.com  
