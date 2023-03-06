Use SQLCourse_DB
--Drop Table TestTable

If OBJECT_ID('TestTable') IS NOT NULL drop table TestTable
GO

CREATE TABLE TestTable 
(PatientID int NOT NULL PRIMARY KEY,
PatientName varchar(255) NULL,
PatientState varchar(255) NULL,
Gender varchar(255) NULL,
Visits int NULL,
Charges int NULL Default 0)

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

	Select * from TestTable