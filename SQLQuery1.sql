SELECT *
FROM insurance

--Total Female(KPI)
SELECT COUNT(sex) AS Total_females
FROM insurance
WHERE sex = 'female';

--Total male(KPI)
SELECT COUNT(sex) AS Total_females
FROM insurance
WHERE sex = 'male';

--Number of children covered by health insurance(KPI)
SELECT SUM(children) AS Total_Children
FROM insurance;

--Average BMI(KPI)
SELECT ROUND(AVG(bmi), 2) AS Average_Bmi
FROM insurance;

--Total charges
SELECT ROUND(SUM(charges), 2) AS Total_charges
FROM insurance;


--Age Range
--Emerging Adults
SELECT age,
       CASE  
           WHEN age BETWEEN 18 AND 25 THEN 'Emerging Adults'
           WHEN age BETWEEN 26 AND 40 THEN 'Established Adults'
           WHEN age BETWEEN 41 AND 55 THEN 'Prime Adults'
           WHEN age BETWEEN 56 AND 64 THEN 'Senior Adults'
           ELSE 'Out of Range'
       END AS Age_Group
FROM insurance;

--Total_Emerging_Adults
SELECT  COUNT(age) AS Total_Emerging_Adults
FROM insurance
WHERE age>=18 AND age<=25

--Total_Established_Adults
SELECT  COUNT(age) AS Total_Established_Adults
FROM insurance
WHERE age>=26 AND age<=40

--Total Prime Adults
SELECT  COUNT(age) AS Total_Prime_Adults
FROM insurance
WHERE age>=41 AND age<=55

--Total Senior Adults
SELECT  COUNT(age) AS Total_Senior_Adults
FROM insurance
WHERE age>=56 AND age<=64

SELECT *
FROM insurance


--Smoker or not
SELECT smoker,
       CASE 
           WHEN smoker = 1 THEN 'Smoker'
           ELSE 'Not Smoker'
       END AS smoker_status
FROM insurance;

--Total smokers
SELECT COUNT(smoker) AS Total_Smokers
FROM insurance
WHERE smoker = 1;

--Total Non_smokers
SELECT COUNT(smoker) AS Total_NonSmokers
FROM insurance
WHERE smoker = 0;





