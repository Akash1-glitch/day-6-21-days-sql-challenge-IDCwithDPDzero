-- 1. Count the number of patients by each service.
use hospital;
SELECT service,  COUNT(*) AS total_patients_per_service FROM patients GROUP BY service; 
-- 2. Calculate the average age of patients grouped by service.
SELECT service, AVG(age) AS avg_age_per_sevrice FROM patientS GROUP BY service;
-- 3. Find the total number of staff members per role.
SELECT role ,COUNT(staff_name) AS total_staff_per_Role  FROM staff GROUP BY role;

-- ### Daily Challenge:

-- **Question:** For each hospital service, calculate the total number of patients admitted, 
-- total patients refused, and the admission rate
--  (percentage of requests that were admitted). Order by admission rate descending.
SELECT service,SUM(patients_admitted) AS total_patients_admitted, 
SUM(patients_refused)AS total_patients_refused, 
ROUND((SUM(patients_admitted) * 100.0) / SUM(patients_request),2) AS admission_rate
FROM services_weekly
GROUP BY service
ORDER BY admission_rate  DESC;