create database energy_eff;

use energy_eff;

select * from energy_efficiency;

describe energy_efficiency;

-- 1. What is the total number of records in the dataset?
select count(*) from energy_efficiency;

-- 2. What is the average Heating Load and Cooling Load?
select avg(`Heating Load`), avg(`Cooling Load`) from energy_efficiency;

-- What are the minimum and maximum values of Heating Load and Cooling Load?
select min(`Heating Load`), min(`Cooling Load`) from energy_efficiency;

-- What is the average Heating Load and Cooling Load grouped by Orientation?
select avg(`Heating Load`), avg(`Cooling Load`) from energy_efficiency
group by `Orientation`;

-- How many records exist for each unique Orientation?
select DISTINCT(`Orientation`) from energy_efficiency;

-- What is the average Surface Area of the buildings?
select avg(`Surface Area`) from energy_efficiency;

-- List all buildings where Heating Load is greater than 50.
select * from energy_efficiency
where "Heating Load" > 10.00;

-- Count how many records have NULLs in any of the columns.
SELECT COUNT(*) AS Null_Record_Count
FROM energy_efficiency
WHERE "Relative Compactness" IS NULL
   OR "Surface Area" IS NULL
   OR "Wall Area" IS NULL
   OR "Roof Area" IS NULL
   OR "Overall Height" IS NULL
   OR "Orientation" IS NULL
   OR "Glazing Area" IS NULL
   OR "Glazing Area Distribution" IS NULL
   OR "Heating Load" IS NULL
   OR "Cooling Load" IS NULL;


-- What is the total Heating Load and Cooling Load for each Glazing Area Distribution?
select `Glazing Area Distribution`, sum(`Heating Load`), sum(`Cooling Load`) from energy_efficiency
group by `Glazing Area Distribution`;

-- Top 5 records with the highest combined (Heating Load + Cooling Load)
SELECT *,
       (`Heating Load` + `Cooling Load`) AS Total_Energy_Load
FROM energy_efficiency
ORDER BY Total_Energy_Load DESC
LIMIT 5;

-- *********** Medium-Level SQL Queries (5) ***********
-- What is the average Cooling Load to Heating Load ratio for each Orientation?
SELECT 
    `Orientation`,
    AVG(`Cooling Load` / NULLIF(`Heating Load`, 0)) AS Avg_CL_HL_Ratio
FROM 
    energy_efficiency
GROUP BY 
    `Orientation`;
    
-- Show average Heating Load and Cooling Load grouped by both Orientation and Glazing Area Distribution.
select 
	avg(`Cooling Load`), avg(`Heating Load`)
from energy_efficiency
group by `Orientation` and `Glazing Area Distribution`;

-- Find all buildings where Heating Load is more than 1.5 times the Cooling Load.
select * from energy_efficiency
where `Heating Load` > 1.1*`Cooling Load`;

-- For each Glazing Area Distribution, calculate the standard deviation of Heating Load and Cooling Load.
select `Glazing Area Distribution`, stddev(`Heating Load`) AS Std_Heating_Load, stddev(`Cooling Load`) AS Std_Cooling_Load from energy_efficiency
group by `Glazing Area Distribution`;

-- Count how many buildings have a combined (Heating Load + Cooling Load) less than 40.
select (`Heating Load` + `Cooling Load`) AS Heating_Cooling_Combined from energy_efficiency
where `Heating Load` + `Cooling Load` > 40;

-- *********** Complex SQL Queries (3) *********** 
-- Rank all records by total energy load (Heating Load + Cooling Load) and assign percentile ranks.
select 
	*, 
    (`Heating Load` + `Cooling Load`) AS Total_Energy_Load,
    RANK() OVER (ORDER BY (`Heating Load` + `Cooling Load`) DESC) AS Energy_Load_Rank,
    PERCENT_RANK() OVER (ORDER BY (`Heating Load` + `Cooling Load`) DESC) AS Percentile_Rank
FROM
	energy_efficiency;
    
-- For each Orientation, return the record with the highest Cooling Load.
SELECT *
FROM (
	SELECT *,
		ROW_NUMBER() OVER (partition by `Orientation` ORDER BY `Orientation` DESC) AS rn
	FROM energy_efficiency
) AS ranked
where rn = 1;

-- Calculate the 3-record moving average of Heating Load when ordered by Surface Area.
select
	*,
    AVG(`Heating Load`) OVER (
    ORDER BY `Surface Area` ROWS BETWEEN 2 PRECEDING AND CURRENT ROW)
    AS Moving_Avg_Heating_Load
FROM
	energy_efficiency;

select * from energy_efficiency;
