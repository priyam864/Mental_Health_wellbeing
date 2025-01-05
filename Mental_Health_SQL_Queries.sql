
-- Average Mental Health Rating
SELECT AVG(Mental_Health_Rating) AS AverageRating
FROM Mental_Health;

-- Count of Students
SELECT COUNT(ID) AS TotalStudents
FROM Mental_Health;

-- Gender-Based Counts
-- Female Count
SELECT COUNT(*) AS FemaleCount
FROM Mental_Health
WHERE Gender = 'Female';

-- Male Count
SELECT COUNT(*) AS MaleCount
FROM Mental_Health
WHERE Gender = 'Male';

-- Combining Demographic Data
SELECT MH.ID, MH.Gender, Dem.Age, Dem.Field_of_Study
FROM Mental_Health MH
JOIN Demographics Dem
ON MH.ID = Dem.ID;
