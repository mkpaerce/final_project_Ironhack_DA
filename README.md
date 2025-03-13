# Analyzing the World Happiness Index (2005-2024) with Job Satisfaction & Work Hours

## 📌 Project Overview

This project explores the key factors contributing to happiness across different countries from 2005 to 2024, using the **World Happiness Index**. We enhance our analysis by incorporating:

- **Job Satisfaction** (measured via employee engagement from the Gallup State of the Global Workforce Report)
- **Average Annual Working Hours** (OECD dataset)

Additionally, we investigate whether external shocks (e.g., pandemics, natural disasters) lead to stronger increases in **generosity and social support** compared to internal shocks (e.g., economic recessions, civil wars).

### 🔍 Key Research Questions

1. What are the primary factors influencing happiness globally?
2. Does **job satisfaction** and **average working hours** improve our ability to explain differences in happiness scores across countries?
3. Do **external shocks** (e.g., pandemics, natural disasters) lead to a stronger increase in generosity and social support compared to internal shocks (e.g., economic recessions, civil wars)?

---

## 📊 Data Collection & Preparation

### **Datasets Used**
- **World Happiness Report (2005-2024)** – Happiness scores and explanatory factors
- **Gallup State of the Global Workforce Report (2024)** – Job satisfaction/employee engagement scores
- **OECD Average Annual Hours Worked (2013-2024)** – Average work hours per country

### **Data Cleaning & Processing**
- Standardizing country names across datasets
- Handling missing values (via interpolation, regional averages, or removal)
- Normalizing **World Happiness Report 2024** for fair comparisons
- Transforming categorical variables into numerical representations (if applicable)
- **Storing structured data** in an SQL database for efficient querying

---

## 🏗 Data Analysis & Statistical Modeling

### **Exploratory Data Analysis (EDA)**
- **Distribution Analysis:** Examining happiness scores across different countries and years
- **Correlation Analysis:** Identifying relationships between happiness and explanatory factors
- **Time-Series Analysis:** Trends in happiness from 2005 to 2024
- **Geographical Mapping:** Visualizing regional variations in happiness scores

### **Statistical Modeling**
- **Regression analysis** to determine feature importance in predicting happiness
- **Hypothesis testing** on the impact of external vs. internal shocks on generosity and social support
- **Feature selection techniques** to identify the most influential factors

---

## 📊 Dashboard Development

### **Tool Used:** Tableau

### **Dashboard Features**
- **Choropleth Map:** Happiness scores by country
- **Time-Series Graphs:** Trends from 2013-2024
- **Bar Charts:** Comparison of different explanatory factors
- **Interactive Filters:** Explore happiness trends by region, year, and key indicators

---

## ⏳ Project Timeline

| Phase       | Task                                    | Tools Used                      | Deadline  |
|------------|----------------------------------------|--------------------------------|-----------|
| Planning   | Define scope, finalize datasets       | Trello, Google Docs            | March 6   |
| Data Prep  | Data collection & cleaning           | SQL, Python (Pandas, NumPy)    | March 7   |
| Database   | Create & store cleaned data in SQL   | PostgreSQL, MySQL              | March 8   |
| EDA        | Exploratory Data Analysis            | Python (Matplotlib, Seaborn)   | March 9   |
| Modeling   | Statistical analysis & hypothesis testing | Scipy, Statsmodels, Sklearn | March 10  |
| Dashboard  | Development & visualization         | Tableau, SQL                   | March 11  |
| Testing    | Review & finalize dashboard         | Tableau/Power BI               | March 12  |
| Finalizing | Presentation preparation & submission | Google Slides, GitHub         | March 13  |

---

## 📁 Project Deliverables

- 📂 **Cleaned Dataset** (SQL Database or CSV format)
- 🐍 **Python Scripts** for EDA, regression analysis, and feature selection
- 📝 **SQL Queries** used for data processing
- 📊 **Tableau/Power BI Dashboard** for visualization
- 🎤 **Project Presentation** (Google Slides/PowerPoint)
- 📜 **GitHub Repository** with full documentation

---

## 🚀 How to Run the Project

### **Prerequisites**
Ensure you have the following installed:
- Python 3.x
- Pandas, NumPy, Matplotlib, Seaborn, Scipy, Statsmodels, Sklearn
- SQL database (PostgreSQL or MySQL)
- Tableau (for dashboard visualization)

### **Steps to Run**
1. **Clone the repository**
   ```bash
   git clone https://github.com/mkpaerce/final_project_Ironhack_DA.git
   ```
2. **Navigate to the project folder**
   ```bash
   cd final_project_Ironhack_DA
   ```
3. **Set up the virtual environment (optional)**
   ```bash
   python -m venv env
   source env/bin/activate  # For Mac/Linux
   env\Scripts\activate     # For Windows
   ```
4. **Install dependencies**
   ```bash
   pip install -r requirements.txt
   ```
5. **Run the data analysis scripts**
   ```bash
   python src/data_analysis.py
   ```
6. **Run SQL queries for structured data processing**
7. **Open the Tableau dashboard for visualization**

https://public.tableau.com/shared/DNC9YJ5YN?:display_count=n&:origin=viz_share_link