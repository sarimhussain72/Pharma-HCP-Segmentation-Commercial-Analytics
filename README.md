
# 💊 Pharmaceutical HCP Segmentation & Commercial Analytics

## 📌 Project Overview

The **Pharmaceutical HCP Segmentation & Commercial Analytics** project is an end-to-end data analytics project that simulates real-world pharmaceutical sales data and demonstrates how data-driven insights can improve commercial decision-making.

The project covers the complete analytics workflow, including synthetic data generation, data cleaning, exploratory data analysis (EDA), SQL-based business analysis, and business reporting.

The objective is to identify high-value healthcare professionals (HCPs), evaluate product performance, analyze regional sales trends, and generate actionable business recommendations using Python and SQL.

---

# 🎯 Business Problem

Pharmaceutical companies interact with thousands of healthcare professionals across different specialties, hospitals, and regions. Understanding prescribing behavior and commercial performance is essential for improving sales effectiveness.

This project answers key business questions such as:

- Which therapy areas generate the highest revenue?
- Which products are top performers?
- Which healthcare professionals contribute the most revenue?
- Which regions offer the highest commercial potential?
- How do physician adoption mindsets influence revenue?

---

# 📊 Dataset Information

The project uses a **synthetically generated pharmaceutical dataset** consisting of four related datasets.

| Dataset | Description |
|----------|-------------|
| HCP Master | Healthcare professional demographics and practice details |
| Products | Pharmaceutical product information |
| Prescriptions | Prescription transactions and sales records |
| Survey | Physician adoption mindset and engagement information |

### Dataset Size

- **Healthcare Professionals:** 2,500
- **Products:** 18
- **Prescription Records:** 100,000
- **Survey Records:** 500+

---

# 🛠️ Tech Stack

- Python
- Pandas
- NumPy
- Plotly
- Matplotlib
- MySQL
- Jupyter Notebook
- VS Code

---

# 📂 Project Structure

```text
Pharma-HCP-Analytics/
│
├── data/
│   ├── raw/
│   └── cleaned/
│
├── notebooks/
│   ├── 01_data_generation.ipynb
│   ├── 02_data_cleaning.ipynb
│   ├── 03_exploratory_data_analysis.ipynb
│   ├── 04_sql_analysis.ipynb
│   └── 05_business_report.ipynb
│
├── sql/
│   └── pharma_hcp_analytics.sql
│
├── images/
│
├── reports/
│
├── requirements.txt
├── README.md
├── LICENSE
└── .gitignore
```

---

# 🔄 Project Workflow

### 1. Data Generation

- Generated realistic pharmaceutical datasets using Python
- Simulated HCPs, products, prescriptions, and physician surveys

---

### 2. Data Cleaning

Performed comprehensive data preprocessing including:

- Missing value treatment
- Duplicate removal
- Data validation
- Data type correction
- Dataset quality verification

---

### 3. Exploratory Data Analysis

Performed Python-based visualization to understand trends and patterns.

Visualizations include:

- Revenue by Therapy Area
- Revenue by Region
- Product Performance
- Specialty Distribution
- Prescription Trends
- Correlation Heatmap
- HCP Segmentation
- Adoption Mindset Distribution

---

### 4. SQL Business Analysis

Executed **25 business-focused SQL queries** covering:

### Business KPIs

- Total Revenue
- Total Prescriptions
- Total New Prescriptions
- Average Revenue
- Total Sales Calls

### Product Performance

- Revenue by Therapy Area
- Top Products by Revenue
- Highest TRx Product
- Highest NRx Product
- Average Revenue by Therapy Area

### HCP Performance

- Top Revenue Generating HCPs
- Revenue by Specialty
- Average TRx by Specialty
- Average Sales Calls
- Top HCPs by NRx

### Regional Analysis

- Revenue by Region
- Revenue by State
- Revenue by Hospital Type
- Revenue by Tier
- Top Cities by Revenue

### Advanced SQL

- Product Ranking
- Specialty Ranking
- Common Table Expressions (CTE)
- Window Functions
- Revenue by Adoption Mindset

---

# 📈 Key Insights

- Identified the highest revenue-generating therapy areas.
- Ranked pharmaceutical products based on commercial performance.
- Identified high-value healthcare professionals.
- Compared prescription behavior across specialties.
- Evaluated regional sales performance.
- Analyzed physician adoption behavior using survey data.
- Applied advanced SQL techniques to solve business problems.

---

# 💡 Business Recommendations

- Prioritize engagement with high-performing healthcare professionals.
- Increase investment in top-performing therapy areas.
- Improve physician engagement in underperforming regions.
- Optimize sales force allocation using regional insights.
- Design personalized marketing strategies based on physician adoption mindset.

---

# 📷 Sample Visualizations

The project includes interactive and static visualizations such as:

- Revenue Analysis
- Product Performance Charts
- Regional Sales Analysis
- Correlation Heatmap
- Physician Segmentation Charts

*(Screenshots can be found in the `images` folder.)*

---

# 🚀 How to Run the Project

### Clone the repository

```bash
git clone https://github.com/yourusername/Pharma-HCP-Analytics.git
```

### Navigate to the project

```bash
cd Pharma-HCP-Analytics
```

### Install dependencies

```bash
pip install -r requirements.txt
```

### Launch Jupyter Notebook

```bash
jupyter notebook
```

Open the notebooks in numerical order:

1. Data Generation
2. Data Cleaning
3. Exploratory Data Analysis
4. SQL Analysis
5. Business Report

---

# 📚 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis
- Business Analytics
- SQL
- Data Visualization
- Healthcare Analytics
- Commercial Analytics
- Relational Database Design
- Window Functions
- Common Table Expressions (CTEs)
- Business Reporting

---

# 🔮 Future Improvements

- Machine Learning-based HCP Segmentation
- Prescription Forecasting
- Interactive Dashboard with Streamlit
- Sales Territory Optimization
- Recommendation Engine for Sales Representatives

---

# 👨‍💻 Author

**Sarim Hussain**

Aspiring Data Analyst | SQL | Python | Business Analytics | Healthcare Analytics

---

## ⭐ If you found this project useful, consider giving it a star!
