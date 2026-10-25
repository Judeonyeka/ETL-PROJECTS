Use Healthcare_dev;

SELECT DISTINCT Insurance_provider
FROM [dbo].[hospital_finance]


-- Loading from one SQL Database to another SQL Database

-- Loading Hospital finance data,insurance provider into different dimension Table.

--   (DIMENSSION TABLE)
-- CREATING THE STRUCTURE

SELECT * into DIM_United_Health_care
FROM [dbo].[hospital_finance]
WHERE 1=0

select *
from DIM_United_Health_care

SELECT * into DIM_Blue_cross
FROM [dbo].[hospital_finance]
WHERE 1=0

select *
from DIM_Blue_cross


SELECT * into DIM_Cigna
FROM [dbo].[hospital_finance]
WHERE 1=0

select *
from DIM_Cigna

SELECT * into DIM_Medicare
FROM [dbo].[hospital_finance]
WHERE 1=0

select *
from DIM_Medicare

SELECT * into DIM_Aetna
FROM [dbo].[hospital_finance]
WHERE 1=0

select *
from DIM_Aetna


TRUNCATE TABLE DIM_United_Health_care;
TRUNCATE TABLE DIM_Blue_cross;
TRUNCATE TABLE DIM_Cigna;
TRUNCATE TABLE DIM_Medicare;
TRUNCATE TABLE DIM_Aetna;


-- DATAS FOR THE SOURCE -OLE DP SOURCE SQL COMMAND

SELECT *
FROM [dbo].[hospital_finance]
WHERE insurance_provider = 'UnitedHealthcare'

SELECT *
FROM [dbo].[hospital_finance]
WHERE insurance_provider = 'Blue Cross'

SELECT *
FROM [dbo].[hospital_finance]
WHERE insurance_provider = 'Cigna'

SELECT *
FROM [dbo].[hospital_finance]
WHERE insurance_provider = 'Medicare'

SELECT *
FROM [dbo].[hospital_finance]
WHERE insurance_provider = 'Aetna'
