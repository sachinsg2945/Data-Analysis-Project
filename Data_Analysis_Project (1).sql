-- Analysis of May month data --
-- Round to 2 decimal points for specified columns --
-- Filtered & removed Blank or null or zero values --
-- Filtered & removed April month data --
-- Filtered the ID that has all 12 days in the specified range --

SELECT *
FROM `Data_Analysis_Project.HealthCare_Data`;

SELECT Id, ActivityDate
FROM `Data_Analysis_Project.HealthCare_Data`
WHERE TotalSteps > 0 AND TotalDistance > 0 AND SedentaryMinutes > 0 AND ActivityDate BETWEEN '2016-05-01' AND '2016-05-12';

SELECT * REPLACE (ROUND(TotalDistance, 2) AS TotalDistance, ROUND(TrackerDistance, 2) AS TrackerDistance, ROUND(LoggedActivitiesDistance, 2) AS LoggedActivitiesDistance, ROUND(VeryActiveDistance, 2) AS VeryActiveDistance, ROUND(ModeratelyActiveDistance, 2) AS ModeratelyActiveDistance, ROUND(LightActiveDistance, 2) AS LightActiveDistance, ROUND(SedentaryActiveDistance, 2) AS SedentaryActiveDistance)
FROM `Data_Analysis_Project.HealthCare_Data`
WHERE TotalSteps > 0 AND TotalDistance > 0 AND SedentaryMinutes > 0 AND ActivityDate BETWEEN '2016-05-01' AND '2016-05-12';

SELECT * REPLACE (
  ROUND(TotalDistance, 2) AS TotalDistance, 
  ROUND(TrackerDistance, 2) AS TrackerDistance, 
  ROUND(LoggedActivitiesDistance, 2) AS LoggedActivitiesDistance, 
  ROUND(VeryActiveDistance, 2) AS VeryActiveDistance, 
  ROUND(ModeratelyActiveDistance, 2) AS ModeratelyActiveDistance, 
  ROUND(LightActiveDistance, 2) AS LightActiveDistance, 
  ROUND(SedentaryActiveDistance, 2) AS SedentaryActiveDistance
)
FROM `Data_Analysis_Project.HealthCare_Data`
WHERE TotalSteps > 0 
  AND TotalDistance > 0 
  AND SedentaryMinutes > 0 
  AND ActivityDate BETWEEN '2016-05-01' AND '2016-05-12'
  -- This filter ensures the ID has all 12 days in the specified range
  AND Id IN (
    SELECT Id
    FROM `Data_Analysis_Project.HealthCare_Data`
    WHERE TotalSteps > 0 
      AND TotalDistance > 0 
      AND SedentaryMinutes > 0 
      AND ActivityDate BETWEEN '2016-05-01' AND '2016-05-12'
    GROUP BY Id
    HAVING COUNT(DISTINCT ActivityDate) = 12
  );
