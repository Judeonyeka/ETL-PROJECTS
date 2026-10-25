
SELECT *,GETDATE() AS IMPORT_DATE
FROM Healthcare_Date
WHERE Insurance_Provider = 'Blue cross'

SELECT DISTINCT Insurance_provider
FROM Healthcare_Date;