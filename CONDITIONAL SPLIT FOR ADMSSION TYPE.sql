SELECT DISTINCT admission_type
FROM hospital_finance

--MAIN DATA: 

SELECT *
FROM hospital_finance


--SOURCE TABLE

SELECT *
FROM hospital_finance
WHERE admission_type = 'Elective'

SELECT *
FROM hospital_finance
WHERE admission_type = 'Urgent'

SELECT *
FROM hospital_finance
WHERE admission_type = 'Emergency'


-- DIMENSSION TABLE

SELECT * INTO DIM_Elective
FROM hospital_finance
WHERE 1=0

SELECT * 
FROM DIM_Elective

SELECT * INTO DIM_Urgent
FROM hospital_finance
WHERE 1=0

SELECT * 
FROM DIM_Urgent

SELECT * INTO DIM_Emergency
FROM hospital_finance
WHERE 1=0

SELECT * 
FROM DIM_Emergency

--TRUNCATATION
TRUNCATE TABLE DIM_Elective;
TRUNCATE TABLE DIM_Urgent;
TRUNCATE TABLE DIM_Emergency;

-------------------------------------------------------------------------------------------------------------------------------------------------------------
--update TABLE
--set COLUMN = NEW NUMBER
--where COLUMN = OLD NUMBER

begin transaction;
UPDATE hospital_finance
SET patient_id = 10
WHERE patient_id = 1688444556667677787865556

Rollback transaction;



