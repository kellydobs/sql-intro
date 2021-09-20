
CREATE TABLE "Employees" (
  "ID"				SERIAL Primary Key,
  "FullName" 		TEXT NOT NULL,
  "Salary" 			NUMERIC,
  "JobPosition"		TEXT,
  "PhoneExtension"	TEXT,
  "IsPartTime"		BOOL
  );
  
  
  INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
  VALUES ('Martin', 1337, 'Software Dev', '7', false),
  		('Kelly', 27, 'Director', '12', true),
        ('Eleanor', 525600, 'Head Honcho', '42', true),
        ('Gordon Ramsay', 666, 'Cook', '1', false),
        ('Tana Ramsay', 999, 'Cook', '2', false),
        ('Lazy Larry', 20000000, 'Professional Sitter', '0', true);
        


-- 1
SELECT * FROM "Employees";

--2
SELECT ("FullName", "PhoneExtension") FROM "Employees" WHERE "IsPartTime" = false;

--3
INSERT INTO "Employees"("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime")
VALUES ('Gavin', 450, 'Software Dev', '11', true);

--4 
UPDATE "Employees" SET "Salary" = 500 WHERE "JobPosition" = 'Cook';

    
 --5
 DELETE FROM "Employees" WHERE "FullName" = 'Lazy Larry';
 
 --6
 ALTER TABLE "Employees" ADD COLUMN "ParkingSpot" VARCHAR(10);
  
  




--CREATE TABLE "Departments" (
--  "ID"					SERIAL Primary Key,
--  "DepartmentName" 		TEXT NOT NULL,
--  "BuildingNumber" 		NUMERIC
 -- );
  
  
--INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES ('Human Resources', 3);
--INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES ('Department of Mysteries', 5);
--INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES ('Gamma Radiation Lab', 12);

--ALTER TABLE "Employees" ADD COLUMN "DeparmentId" INTEGER NULL REFERENCES "Departments" ("ID");

UPDATE "Employees" SET "DeparmentId" = 3 WHERE "ID" IN (1);
UPDATE "Employees" SET "DeparmentId" = 2 WHERE "ID" IN (2, 3);
UPDATE "Employees" SET "DeparmentId" = 1 WHERE "ID" IN (4, 5, 6);
