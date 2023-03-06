Create Database SQLCourse_DB
--Create Database SQLCourse_DB_TEST

--Drop Database SQLCourse_DB_TEST
USE SQLCourse_DB
Create Table TestTable
(PatientID varchar(255)
,PatientName varchar(255)
,PatientState varchar(255)
,Gender varchar(255)
,Visits int
,Charges int)

select * from TestTable

Insert Into TestTable
(PatientID 
,PatientName 
,PatientState 
,Gender 
,Visits 
,Charges)
Values
('12345'
,'John'
,'AL'
,'M'
,'3'
,'200')
INSERT INTO TestTable
           (PatientID
           ,PatientName
           ,PatientState
           ,Gender
           ,Visits
		   ,Charges)
     VALUES
	 ('12345','John','AL','M','3','200')
	,('12346','Jane','AK','F','1','400')
	,('12347','Alex','AZ','F','6','900')
	,('12348','Bob','CA','M','7','8000')
	,('12349','Josh','CO','M','12','19000')
	,('12350','Stephanie','FL','F','18','25000')
	,('12351','Amber','GA','F','4','400')
	,('12352','Brittany','GA','F','6','4000')
	,('12353','Bill','UT','M','8','5000')
	,('12354','Nate','WY','M','22','28000')

	Insert Into TestTable
	(PatientName)
	Values ('Fred')

	Drop Table TestTable

	CREATE TABLE TestTable 
(PatientID varchar(255) NOT NULL,
PatientName varchar(255) NOT NULL,
PatientState varchar(255) NOT NULL,
Gender varchar(255) NOT NULL,
Visits int Null 
,Charges int Null Default 

Select * from TestTable

Select Top 10 * from TestTable

-- How to see only patient name and state removing other columns from table 
Select
	PatientName
	,PatientState
From TestTable

-- How to see distinct patients only in this case all patients are distinct due to ID being primary key 
Select Distinct * from TestTable

--Distinct: only seeing Patient ID
Select Distinct
	PatientID
From TestTable

-- Using Where and statement to show only females who meet both conditions
Select *
from TestTable
where PatientState = 'GA'
	and Gender = 'F'

-- Using Where  or statements to have a list of people who meet either of the two  conditions
Select * 
from TestTable
where PatientState = 'GA'
or Gender = 'F'


-- Using Where not statements to have a list excluding the listed condition 
Select *
from TestTable
Where Not PatientState = 'GA'


--Using Where between statement to have a list of figures that are in between two integers
Select *
from TestTable
where Visits between '1' and'10'

-- You can show only the columns you care about by specificing them first before your where statement 
Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName in ('John','Brittany','Amber')

-- Will show names that start with J with any letters after
Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName Like 'J%'

-- Shows names that starts with J and end in E
Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName Like 'J%'
	and PatientName Like '%E'

-- Shows name that meets condition of only o between J and E
Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName Like 'J[o]E'

-- Locates names with only one missing charcter
Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName Like 'J_NE'

-- Will only show you names that have a letter between a and z following J (ONE CHARCTER)
Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName Like 'J[a-z]'

Select distinct
	PatientName
	,PatientState
from TestTable
Where PatientName Like 'Ru[b-d]Y'

Select distinct
	PatientName
From TestTable
where Visits is null


Select distinct
	PatientName
From TestTable
where Visits is not null

-- Order By statements

--Before
Select
	PatientName
	,PatientState
From TestTable
Where Gender = 'M'
-- After
Select
	PatientName
	,PatientState
From TestTable
Where Gender = 'M'
Order by PatientState DESC

Select
	PatientName
	,PatientState
From TestTable
Where Gender = 'M'
Order by 2 ASC

-- Aggregate Functions
-- select how many rowas and return the value
Select COUNT(*) from TestTable

Select COUNT(Gender) from TestTable
-- ^counts each row rather than distinct varchar identifiers for gender
--counts distinct varchar identifiers for gender
Select COUNT(Distinct Gender) from TestTable

-- Shows the number of states with males within the data set
Select COUNT(Distinct PatientState) from TestTable
Where Gender = 'M'


-- Group By Functions COUNT shows us how many entires fall within the same variable
Select 
	PatientState
	, COUNT(*) 
FROM TestTable
GROUP BY PatientState

-- Specifies how many  of each geneder are within the data
Select
	Gender
	,Count(Distinct PatientState)
From TestTable
Group by Gender

Select 
	PatientState
	, COUNT(*) 
FROM TestTable
GROUP BY PatientState
Order by 2 DESC

-- Group By Functions showing MAX and MIN

Select 
	MIN(charges)
	,MAX(charges)
From TestTable

-- How do charges vary by gender? within three states? from z to a
Select 
	Gender
	,MIN(charges)
	,MAX(charges)
From TestTable
Where PatientState in ('FL','GA','CA')
Group by Gender
Order by 3 ASC

Select 
	Gender
	,MIN(charges)
	,MAX(charges)
From TestTable
Group by Gender