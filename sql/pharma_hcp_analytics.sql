-- CREATE DATABASE pharma_hcp_analytics;
USE pharma_hcp_analytics;

-- ==========================================
-- HCP Master
-- ==========================================

-- CREATE TABLE hcp_master (

--     HCP_ID VARCHAR(20) PRIMARY KEY,
--     HCP_Name VARCHAR(100),
--     Gender VARCHAR(20),
--     Age INT,
--     Experience_Years INT,
--     Specialty VARCHAR(50),
--     Hospital_Type VARCHAR(50),
--     Practice_Type VARCHAR(50),
--     Patient_Volume VARCHAR(30),
--     Region VARCHAR(30),
--     State VARCHAR(50),
--     City VARCHAR(50),
--     Tier VARCHAR(20)

-- );

-- ==========================================
-- Products
-- ==========================================

-- CREATE TABLE products (

--     Product_ID VARCHAR(10) PRIMARY KEY,
--     Product_Name VARCHAR(100),
--     Therapy_Area VARCHAR(50),
--     Launch_Year INT,
--     Unit_Price_INR DECIMAL(10,2)

-- );

-- ==========================================
-- Prescriptions
-- ==========================================

-- CREATE TABLE prescriptions (

--     Prescription_ID VARCHAR(20) PRIMARY KEY,
--     HCP_ID VARCHAR(20),
--     Product_ID VARCHAR(10),
--     Product_Name VARCHAR(100),
--     Therapy_Area VARCHAR(50),
--     Month VARCHAR(20),
--     Year INT,
--     TRx INT,
--     NRx INT,
--     Sales_Calls INT,
--     Samples_Provided INT,
--     Sales_Value DECIMAL(15,2),

    -- FOREIGN KEY (HCP_ID) REFERENCES hcp_master(HCP_ID),
--     FOREIGN KEY (Product_ID) REFERENCES products(Product_ID)

-- );

-- ==========================================
-- Survey
-- ==========================================

-- CREATE TABLE survey (

--     HCP_ID VARCHAR(20),
--     Brand_Awareness VARCHAR(20),
--     Adoption_Mindset VARCHAR(50),
--     Evidence_Preference VARCHAR(20),
--     Digital_Engagement VARCHAR(20),
--     Segment VARCHAR(50),

--     FOREIGN KEY (HCP_ID) REFERENCES hcp_master(HCP_ID)

-- );

-- SHOW TABLES;

-- SELECT 'hcp_master' AS Table_Name, COUNT(*) AS Total_Rows FROM hcp_master
-- UNION ALL
-- SELECT 'products', COUNT(*) FROM products
-- UNION ALL
-- SELECT 'prescriptions', COUNT(*) FROM prescriptions
-- UNION ALL
-- SELECT 'survey', COUNT(*) FROM survey;


-- Section 1: Business KPIs

-- Total Revenue
-- SELECT
--     ROUND(SUM(Sales_Value),2) AS Total_Revenue
-- FROM prescriptions;

-- Total Prescriptions (TRx)
-- SELECT
--     SUM(TRx) AS Total_TRx
-- FROM prescriptions;


-- Total New Prescriptions (NRx)
-- SELECT
--     SUM(NRx) AS Total_NRx
-- FROM prescriptions;

-- Average Revenue per Prescription Record
-- SELECT
--     ROUND(AVG(Sales_Value),2) AS Avg_Sales
-- FROM prescriptions;

-- Total Sales Calls
-- SELECT
--     SUM(Sales_Calls) AS Total_Sales_Calls
-- FROM prescriptions;

-- Section 2: Product Performance 

-- Revenue by Therapy Area
-- SELECT
--     Therapy_Area,
--     ROUND(SUM(Sales_Value),2) AS Revenue
-- FROM prescriptions
-- GROUP BY Therapy_Area
-- ORDER BY Revenue DESC;

-- Top 10 Products by Revenue
-- SELECT
--     Product_Name,
--     ROUND(SUM(Sales_Value),2) AS Revenue
-- FROM prescriptions
-- GROUP BY Product_Name
-- ORDER BY Revenue DESC
-- LIMIT 10;

-- Highest TRx Product
-- SELECT
--     Product_Name,
--     SUM(TRx) AS Total_TRx
-- FROM prescriptions
-- GROUP BY Product_Name
-- ORDER BY Total_TRx DESC
-- LIMIT 1;

-- Highest NRx Product
-- SELECT
--     Product_Name,
--     SUM(NRx) AS Total_NRx
-- FROM prescriptions
-- GROUP BY Product_Name
-- ORDER BY Total_NRx DESC
-- LIMIT 1;

-- Average Revenue per Therapy Area
-- SELECT
--     Therapy_Area,
--     ROUND(AVG(Sales_Value),2) AS Avg_Revenue
-- FROM prescriptions
-- GROUP BY Therapy_Area
-- ORDER BY Avg_Revenue DESC;

-- Section 3: HCP Performance
--  Top 10 HCPs by Revenue
-- SELECT
--     h.HCP_Name,
--     h.Specialty,
--     ROUND(SUM(p.Sales_Value),2) AS Revenue
-- FROM prescriptions p
-- JOIN hcp_master h
-- ON p.HCP_ID = h.HCP_ID
-- GROUP BY h.HCP_Name, h.Specialty
-- ORDER BY Revenue DESC
-- LIMIT 10;

-- Revenue by Specialty
-- SELECT
--     h.Specialty,
--     ROUND(SUM(p.Sales_Value),2) AS Revenue
-- FROM prescriptions p
-- JOIN hcp_master h
-- ON p.HCP_ID = h.HCP_ID
-- GROUP BY h.Specialty
-- ORDER BY Revenue DESC;

-- Average TRx by Specialty
-- SELECT
--     h.Specialty,
--     ROUND(AVG(p.TRx),2) AS Avg_TRx
-- FROM prescriptions p
-- JOIN hcp_master h
-- ON p.HCP_ID = h.HCP_ID
-- GROUP BY h.Specialty
-- ORDER BY Avg_TRx DESC;

-- Average Sales Calls by Specialty
-- SELECT
--     h.Specialty,
--     ROUND(AVG(p.Sales_Calls),2) AS Avg_Sales_Calls
-- FROM prescriptions p
-- JOIN hcp_master h
-- ON p.HCP_ID = h.HCP_ID
-- GROUP BY h.Specialty
-- ORDER BY Avg_Sales_Calls DESC;

-- Top 10 HCPs by NRx
-- SELECT
--     h.HCP_Name,
--     SUM(p.NRx) AS Total_NRx
-- FROM prescriptions p
-- JOIN hcp_master h
-- ON p.HCP_ID = h.HCP_ID
-- GROUP BY h.HCP_Name
-- ORDER BY Total_NRx DESC
-- LIMIT 10;

-- Section 4: Regional Analysis

-- Revenue by Region
SELECT
    h.Region,
    ROUND(SUM(p.Sales_Value),2) AS Revenue
FROM prescriptions p
JOIN hcp_master h
ON p.HCP_ID = h.HCP_ID
GROUP BY h.Region
ORDER BY Revenue DESC;
-- Revenue by State
SELECT
    h.State,
    ROUND(SUM(p.Sales_Value),2) AS Revenue
FROM prescriptions p
JOIN hcp_master h
ON p.HCP_ID = h.HCP_ID
GROUP BY h.State
ORDER BY Revenue DESC;

--  Revenue by Hospital Type
SELECT
    h.Hospital_Type,
    ROUND(SUM(p.Sales_Value),2) AS Revenue
FROM prescriptions p
JOIN hcp_master h
ON p.HCP_ID = h.HCP_ID
GROUP BY h.Hospital_Type
ORDER BY Revenue DESC;

-- Revenue by Tier
SELECT
    h.Tier,
    ROUND(SUM(p.Sales_Value),2) AS Revenue
FROM prescriptions p
JOIN hcp_master h
ON p.HCP_ID = h.HCP_ID
GROUP BY h.Tier
ORDER BY Revenue DESC;

-- Top 10 Cities by Revenue
SELECT
    h.City,
    ROUND(SUM(p.Sales_Value),2) AS Revenue
FROM prescriptions p
JOIN hcp_master h
ON p.HCP_ID = h.HCP_ID
GROUP BY h.City
ORDER BY Revenue DESC
LIMIT 10;

-- Section 5: Advanced SQL

-- Rank Products by Revenue
SELECT
    Product_Name,
    ROUND(SUM(Sales_Value),2) AS Revenue,
    RANK() OVER(ORDER BY SUM(Sales_Value) DESC) AS Product_Rank
FROM prescriptions
GROUP BY Product_Name;

-- Rank Specialties by Revenue
SELECT
    h.Specialty,
    ROUND(SUM(p.Sales_Value),2) AS Revenue,
    DENSE_RANK() OVER(ORDER BY SUM(p.Sales_Value) DESC) AS Specialty_Rank
FROM prescriptions p
JOIN hcp_master h
ON p.HCP_ID = h.HCP_ID
GROUP BY h.Specialty;

-- Above Average Revenue Products (CTE)

WITH ProductRevenue AS (

SELECT
    Product_Name,
    SUM(Sales_Value) AS Revenue
FROM prescriptions
GROUP BY Product_Name

)

SELECT *
FROM ProductRevenue
WHERE Revenue >
(
SELECT AVG(Revenue)
FROM ProductRevenue
);

-- Top Product in Each Therapy Area
WITH RankedProducts AS (

SELECT
    Therapy_Area,
    Product_Name,
    SUM(Sales_Value) AS Revenue,
    RANK() OVER(
        PARTITION BY Therapy_Area
        ORDER BY SUM(Sales_Value) DESC
    ) AS rnk
FROM prescriptions
GROUP BY Therapy_Area, Product_Name

)

SELECT *
FROM RankedProducts
WHERE rnk = 1;

-- Revenue by Adoption Mindset
SELECT
    s.Adoption_Mindset,
    ROUND(SUM(p.Sales_Value),2) AS Revenue
FROM prescriptions p
JOIN survey s
ON p.HCP_ID = s.HCP_ID
GROUP BY s.Adoption_Mindset
ORDER BY Revenue DESC;
