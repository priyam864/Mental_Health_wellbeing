
-- Create the Fact Table
CREATE TABLE Fact_Mental_Health (
    ID INT PRIMARY KEY,
    Mental_Health_Rating FLOAT,
    Anxiety_Frequency INT,
    Support_System_Availability INT,
    Stress_Relief_Frequency INT,
    Treatment_Consistency INT
);

-- Create the Dimension Table: Demographics
CREATE TABLE Dim_Demographics (
    ID INT PRIMARY KEY,
    Age INT,
    Gender VARCHAR(20),
    Field_of_Study VARCHAR(50)
);

-- Create the Dimension Table: Behavioral Factors
CREATE TABLE Dim_Behavioral_Factors (
    ID INT PRIMARY KEY,
    Physical_Activity INT,
    Substance_Use_Frequency INT,
    Self_Awareness FLOAT,
    Self_Comparison FLOAT
);

-- Create the Dimension Table: Social and Environmental Factors
CREATE TABLE Dim_Social_Environmental_Factors (
    ID INT PRIMARY KEY,
    Family_Relationship_Status VARCHAR(50),
    Peer_Emotional_Support INT,
    Community_Involvement INT,
    Discrimination_Experience INT
);

-- Populate the Fact Table (Example Data)
INSERT INTO Fact_Mental_Health (ID, Mental_Health_Rating, Anxiety_Frequency, Support_System_Availability, Stress_Relief_Frequency, Treatment_Consistency)
VALUES
(1, 3.5, 10, 2, 3, 1),
(2, 4.0, 7, 3, 5, 2);

-- Populate the Dimension Tables (Example Data)
INSERT INTO Dim_Demographics (ID, Age, Gender, Field_of_Study)
VALUES
(1, 22, 'Female', 'Computer Science'),
(2, 25, 'Male', 'Mechanical Engineering');

INSERT INTO Dim_Behavioral_Factors (ID, Physical_Activity, Substance_Use_Frequency, Self_Awareness, Self_Comparison)
VALUES
(1, 5, 0, 4.5, 2.0),
(2, 3, 1, 4.0, 3.0);

INSERT INTO Dim_Social_Environmental_Factors (ID, Family_Relationship_Status, Peer_Emotional_Support, Community_Involvement, Discrimination_Experience)
VALUES
(1, 'Good', 4, 2, 1),
(2, 'Average', 3, 3, 2);

-- Example Join Query to Analyze Data
SELECT
    D1.Age,
    D1.Gender,
    F.Mental_Health_Rating,
    B.Physical_Activity,
    S.Family_Relationship_Status
FROM Fact_Mental_Health F
JOIN Dim_Demographics D1 ON F.ID = D1.ID
JOIN Dim_Behavioral_Factors B ON F.ID = B.ID
JOIN Dim_Social_Environmental_Factors S ON F.ID = S.ID;
