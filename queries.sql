
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




--HW Joins


CREATE TABLE "Departments" (
  "ID"					SERIAL Primary Key,
  "DepartmentName" 		TEXT NOT NULL,
  "BuildingNumber" 		TEXT
  
 );
  
 
 --ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("ID");

--INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES ('Human Resources', 3);
--INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES ('Department of Mysteries', 5);
--INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES ('Gamma Radiation Lab', 12);

--ALTER TABLE "Employees" ADD COLUMN "DepartmentId" INTEGER NULL REFERENCES "Departments" ("ID");

--UPDATE "Employees" SET "DepartmentId" = 3 WHERE "ID" IN (1);
--UPDATE "Employees" SET "DepartmentId" = 2 WHERE "ID" IN (2, 3);
--UPDATE "Employees" SET "DepartmentId" = 1 WHERE "ID" IN (4, 5, 6);



CREATE TABLE "Products" (
  "ID"				SERIAL Primary Key,
 "Price"				NUMERIC,
 "Name" 				TEXT,
 "Description"		TEXT,
 "QuantityInStock" INTEGER
  );
  
  
  CREATE TABLE "Orders" (
    "ID"			SERIAL Primary Key,
    "OrderNumber"	TEXT,
    "DatePlaced"	DATE,
    "Email"			TEXT
    );
    

CREATE TABLE "ProductOrders" (
  "ID"				SERIAL Primary Key,
  "ProductID"		INTEGER NULL REFERENCES "Products" ("ID"),
  "OrderID"			INTEGER NULL REFERENCES "Orders" ("ID"),
  "OrderQuantity"	INTEGER
  );
  

INSERT INTO "Departments" ("DepartmentName", "BuildingNumber") VALUES 
('Development','Main'),
('Marketing' , 'North');


 INSERT INTO "Employees" ("FullName", "Salary", "JobPosition", "PhoneExtension", "IsPartTime", "DepartmentId")
  VALUES ('Tim Smith',	40000,	'Programmer', 123,	false,	1),
('Barbara Ramsey',	80000,	'Manager', 234,	false,	1),
('Tom Jones',	32000,	'Admin', 456, true,	2);

        
INSERT INTO "Products" ("Price", "Name", "Description", "QuantityInStock") VALUES
(12.45, 'Widget', 'The Original Widget', 100),
(99.99, 'Flowbee', 'Perfect for Haircuts', 30);


INSERT INTO "Orders" ("OrderNumber", "DatePlaced", "Email") VALUES
('X529', TO_DATE('01/01/2020', 'DD/MM/YYYY'), 'person@example.com');


INSERT INTO "ProductOrders" ("ProductID", "OrderID", "OrderQuantity") VALUES
(1, 1, 3);

INSERT INTO "ProductOrders" ("ProductID", "OrderID", "OrderQuantity") VALUES
(2, 1, 3);


SELECT * FROM "Employees"
JOIN "Departments" ON "Employees"."DepartmentId" = "Departments"."ID"
WHERE "BuildingNumber" = 'Main';

SELECT * FROM "Orders"
JOIN "ProductOrders" ON "Orders"."ID" = "ProductOrders"."OrderID"
WHERE "ProductID" = 2


SELECT * FROM "Products"
JOIN "ProductOrders" ON "Products"."ID" = "ProductOrders"."ProductID"
WHERE "Name"= 'Flowbee';














