/* TABLE CREATION */

-- CREATE THE DATABASE
DROP DATABASE TREE_SERVICE

CREATE DATABASE TREE_SERVICE
;

-- USE THE DATABASE
USE TREE_SERVICE
;


---TABLE 1: CLIENT

DROP TABLE CLIENT;

CREATE TABLE CLIENT (
    CLIENT_ID						INT									IDENTITY							CONSTRAINT PK_CLIENT_ID		PRIMARY KEY
    ,NAME								VARCHAR(255)															CONSTRAINT NN_CLIENT_NAME	NOT NULL
    ,ADDRESS							VARCHAR(255)
    ,CITY									VARCHAR(100)
    ,STATE								CHAR(2)
    ,ZIPCODE							CHAR(5)
    ,PHONE_NUMBER			VARCHAR(12)
    ,EMAIL								VARCHAR(255)															CONSTRAINT NN_EMAIL			NOT NULL
);

SET IDENTITY_INSERT dbo.CLIENT ON;

INSERT INTO CLIENT (CLIENT_ID, NAME, ADDRESS, CITY, STATE, ZIPCODE, PHONE_NUMBER, EMAIL) 
VALUES
	(1, 'John Doe', '123 Main St', 'New York', 'NY', '10001', '555-555-5555', 'john.doe@email.com')
	,(2, 'Jane Doe', '456 Elm St', 'Los Angeles', 'CA', '90001', '555-555-5556', 'jane.doe@email.com')
	,(3, 'Mary Johnson', '789 Pine St', 'Chicago', 'IL', '60601', '555-555-5557', 'mary.johnson@email.com')
	,(4, 'James Smith', '101 Oak St', 'Houston', 'TX', '77001', '555-555-5558', 'james.smith@email.com')
	,(5, 'Emily Davis', '202 Birch St', 'Phoenix', 'AZ', '85001', '555-555-5559', 'emily.davis@email.com')
	,(6, 'Brian Wilson', '303 Cedar St', 'Philadelphia', 'PA', '19019', '555-555-5560', 'brian.wilson@email.com')
	,(7, 'Sarah Taylor', '404 Spruce St', 'San Antonio', 'TX', '78201', '555-555-5561', 'sarah.taylor@email.com')
	,(8, 'Michael Brown', '505 Walnut St', 'San Diego', 'CA', '92101', '555-555-5562', 'michael.brown@email.com')
	,(9, 'Linda Green', '606 Chestnut St', 'Dallas', 'TX', '75201', '555-555-5563', 'linda.green@email.com')
	,(10, 'Robert White', '707 Willow St', 'San Jose', 'CA', '95101', '555-555-5564', 'robert.white@email.com')
	,(11, 'Patricia Hall', '808 Maple St', 'Austin', 'TX', '73301', '555-555-5565', 'patricia.hall@email.com')
	,(12, 'Charles Walker', '909 Poplar St', 'Jacksonville', 'FL', '32099', '555-555-5566', 'charles.walker@email.com')
	,(13, 'Barbara Lewis', '1010 Ash St', 'Fort Worth', 'TX', '76101', '555-555-5567', 'barbara.lewis@email.com')
	,(14, 'Joseph Young', '1111 Fir St', 'Columbus', 'OH', '43085', '555-555-5568', 'joseph.young@email.com')
	,(15, 'Betty Taylor', '1212 Redwood St', 'San Francisco', 'CA', '94101', '555-555-5569', 'betty.taylor@email.com')
	,(16, 'Steven Wright', '1313 Sequoia St', 'Charlotte', 'NC', '28201', '555-555-5570', 'steven.wright@email.com')
	,(17, 'Donna Johnson', '1414 Sycamore St', 'Indianapolis', 'IN', '46201', '555-555-5571', 'donna.johnson@email.com')
	,(18, 'Gary Lee', '1515 Cedar St', 'Seattle', 'WA', '98101', '555-555-5572', 'gary.lee@email.com')
	,(19, 'Helen Jones', '1616 Cypress St', 'Denver', 'CO', '80014', '555-555-5573', 'helen.jones@email.com')
	,(20, 'Kenneth Adams', '1717 Hemlock St', 'Boston', 'MA', '2101', '555-555-5574', 'kenneth.adams@email.com')
	,(21, 'Karen Martinez', '1818 Larch St', 'El Paso', 'TX', '79901', '555-555-5575', 'karen.martinez@email.com')
	,(22, 'Mark Phillips', '1919 Pine St', 'Detroit', 'MI', '48201', '555-555-5576', 'mark.phillips@email.com')
	,(23, 'Shirley Clark', '2020 Oak St', 'Nashville', 'TN', '37201', '555-555-5577', 'shirley.clark@email.com')
	,(24, 'Walter Allen', '2121 Maple St', 'Portland', 'OR', '97086', '555-555-5578', 'walter.allen@email.com')
	,(25, 'Carol Edwards', '2222 Elm St', 'Memphis', 'TN', '37501', '555-555-5579', 'carol.edwards@email.com')
	,(26, 'Ronald Collins', '2323 Ash St', 'Oklahoma City', 'OK', '73008', '555-555-5580', 'ronald.collins@email.com')
	,(27, 'Christine Baker', '2424 Birch St', 'Las Vegas', 'NV', '88901', '555-555-5581', 'christine.baker@email.com')
	,(28, 'Thomas Parker', '2525 Cedar St', 'Baltimore', 'MD', '21201', '555-555-5582', 'thomas.parker@email.com')
	,(29, 'Joyce Campbell', '2626 Cypress St', 'Louisville', 'KY', '40201', '555-555-5583', 'joyce.campbell@email.com')
	,(30, 'Christopher Cox', '2727 Fir St', 'Milwaukee', 'WI', '53201', '555-555-5584', 'christopher.cox@email.com')
	,(31, 'Dorothy Nelson', '2828 Hemlock St', 'Albuquerque', 'NM', '87101', '555-555-5585', 'dorothy.nelson@email.com')
	,(32, 'Bruce Thompson', '2929 Larch St', 'Tucson', 'AZ', '85701', '555-555-5586', 'bruce.thompson@email.com')
	,(33, 'Beverly Moore', '3030 Pine St', 'Fresno', 'CA', '93650', '555-555-5587', 'beverly.moore@email.com')
	,(34, 'Raymond Murphy', '3131 Redwood St', 'Sacramento', 'CA', '94203', '555-555-5588', 'raymond.murphy@email.com')
	,(35, 'Gloria Morgan', '3232 Sequoia St', 'Mesa', 'AZ', '85201', '555-555-5589', 'gloria.morgan@email.com')
	,(36, 'Gerald Rogers', '3333 Sycamore St', 'Atlanta', 'GA', '30301', '555-555-5590', 'gerald.rogers@email.com')
	,(37, 'Norma Watson', '3434 Walnut St', 'Kansas City', 'MO', '64101', '555-555-5591', 'norma.watson@email.com')
	,(38, 'Albert Coleman', '3535 Willow St', 'Colorado Springs', 'CO', '80840', '555-555-5592', 'albert.coleman@email.com')
	,(39, 'Marilyn Stewart', '3636 Oak St', 'Miami', 'FL', '33101', '555-555-5593', 'marilyn.stewart@email.com')
	,(40, 'Harold Kelly', '3737 Maple St', 'Raleigh', 'NC', '27601', '555-555-5594', 'harold.kelly@email.com')
	,(41, 'Frances Wood', '3838 Elm St', 'Minneapolis', 'MN', '55401', '555-555-5595', 'frances.wood@email.com')
	,(42, 'Harry Ross', '3939 Ash St', 'Arlington', 'TX', '76001', '555-555-5596', 'harry.ross@email.com')
	,(43, 'Jack Griffin', '4040 Birch St', 'Tampa', 'FL', '33601', '555-555-5597', 'jack.griffin@email.com')
	,(44, 'Carol Simmons', '4141 Cedar St', 'New Orleans', 'LA', '70112', '555-555-5598', 'carol.simmons@email.com')
	,(45, 'Laura Howard', '4242 Cypress St', 'Wichita', 'KS', '67201', '555-555-5599', 'laura.howard@email.com')
	,(46, 'Lawrence Powell', '4343 Fir St', 'Cleveland', 'OH', '44101', '555-555-5600', 'lawrence.powell@email.com')
	,(47, 'Joan Bell', '4444 Hemlock St', 'Bakersfield', 'CA', '93301', '555-555-5601', 'joan.bell@email.com')
	,(48, 'William Gonzales', '4545 Larch St', 'Aurora', 'CO', '80010', '555-555-5602', 'william.gonzales@email.com')
	,(49, 'Cheryl Howard', '4646 Pine St', 'Honolulu', 'HI', '96801', '555-555-5603', 'cheryl.howard@email.com')
	,(50, 'Steven Lawson', '4747 Redwood St', 'Santa Ana', 'CA', '92701', '555-555-5604', 'steven.lawson@email.com')
;

SET IDENTITY_INSERT dbo.CLIENT OFF
;

SELECT * FROM CLIENT;

---	 TABLE 2:PROPERTY

DROP TABLE PROPERTY;

CREATE TABLE PROPERTY (
    PROPERTY_ID						INT									IDENTITY						CONSTRAINT PK_PROPERTY_ID	PRIMARY KEY
    ,CLIENT_ID							INT																			CONSTRAINT NN_CLIENT_ID	NOT NULL
    ,ADDRESS								VARCHAR(255)
    ,CITY										VARCHAR(100)
    ,STATE									CHAR(2)
    ,ZIPCODE								CHAR(5)
	,CONSTRAINT FK_CLIENT_ID FOREIGN KEY (CLIENT_ID) REFERENCES dbo.CLIENT(CLIENT_ID)
);

SET IDENTITY_INSERT dbo.PROPERTY ON
;

INSERT INTO PROPERTY (PROPERTY_ID, CLIENT_ID, ADDRESS, CITY, STATE, ZIPCODE) 
VALUES
	(1, 6, '890 Oak St', 'Anytown', 'NY', '12345')
	,(2, 5, '567 Pine St', 'Sometown', 'CA', '67890')
	,(3, 2, '123 Maple St', 'Thistown', 'TX', '13579')
	,(4, 4, '456 Elm St', 'Mytown', 'FL', '24680')
	,(5, 7, '789 Birch St', 'Yourtown', 'MA', '97531')
	,(6, 3, '101 Cedar St', 'Ourtown', 'PA', '86420')
	,(7, 1, '202 Spruce St', 'Histown', 'OH', '75310')
	,(8, 9, '303 Willow St', 'Yestown', 'MI', '64290')
	,(9, 50, '404 Redwood St', 'Theirtown', 'GA', '53124')
	,(10, 8, '505 Cypress St', 'Histown', 'IN', '42069')
	,(11, 24, '606 Sequoia St', 'Ourtown', 'AZ', '36987')
	,(12, 29, '707 Poplar St', 'Theirtown', 'IL', '25846')
	,(13, 22, '808 Fir St', 'Sometown', 'TN', '14725')
	,(14, 40, '909 Cedar St', 'Anytown', 'MO', '3694')
	,(15, 4, '1010 Dogwood St', 'Mytown', 'WI', '80264')
	,(16, 15, '1111 Magnolia St', 'Yourtown', 'CT', '75139')
	,(17, 10, '1212 Holly St', 'Yestown', 'LA', '64028')
	,(18, 2, '1313 Ironwood St', 'Histown', 'SC', '52937')
	,(19, 5, '1414 Maple St', 'Ourtown', 'NJ', '41826')
	,(20, 38, '1515 Pine St', 'Theirtown', 'CO', '30715')
	,(21, 33, '1616 Oak St', 'Sometown', 'ND', '19604')
	,(22, 16, '1717 Spruce St', 'Thistown', 'RI', '28593')
	,(23, 13, '1818 Willow St', 'Mytown', 'VT', '17482')
	,(24, 30, '1919 Redwood St', 'Anytown', 'WV', '6381')
	,(25, 27, '2020 Cypress St', 'Yestown', 'OK', '95270')
	,(26, 21, '2121 Sequoia St', 'Yourtown', 'NH', '84159')
	,(27, 18, '2222 Poplar St', 'Histown', 'SD', '73048')
	,(28, 1, '2323 Fir St', 'Ourtown', 'MT', '61935')
	,(29, 28, '2424 Cedar St', 'Theirtown', 'ID', '50820')
	,(30, 14, '2525 Dogwood St', 'Mytown', 'WY', '39711')
	,(31, 31, '2626 Holly St', 'Sometown', 'AK', '28602')
	,(32, 26, '2727 Ironwood St', 'Yestown', 'HI', '17571')
	,(33, 48, '2828 Magnolia St', 'Yourtown', 'DC', '6459')
	,(34, 23, '2929 Maple St', 'Histown', 'KS', '54318')
	,(35, 17, '3030 Pine St', 'Ourtown', 'AL', '43207')
	,(36, 20, '3131 Oak St', 'Thistown', 'MS', '32196')
	,(37, 32, '3232 Spruce St', 'Anytown', 'NM', '21085')
	,(38, 11, '3333 Willow St', 'Mytown', 'AR', '10974')
	,(39, 34, '3434 Redwood St', 'Yestown', 'IA', '99863')
	,(40, 35, '3535 Cypress St', 'Yourtown', 'OR', '88752')
	,(41, 49, '3636 Sequoia St', 'Ourtown', 'NE', '77641')
	,(42, 9, '3737 Poplar St', 'Thistown', 'DE', '66530')
	,(43, 6, '3838 Fir St', 'Mytown', 'KY', '55419')
	,(44, 37, '3939 Cedar St', 'Sometown', 'NV', '44308')
	,(45, 42, '4040 Dogwood St', 'Anytown', 'UT', '33297')
	,(46, 45, '4141 Holly St', 'Yestown', 'WY', '22184')
	,(47, 39, '4242 Ironwood St', 'Yourtown', 'MA', '11065')
	,(48, 43, '4343 Magnolia St', 'Histown', 'VA', '95886')
	,(49, 47, '4444 Maple St', 'Ourtown', 'NC', '89843')
	,(50, 46, '4545 Pine St', 'Theirtown', 'WA', '78734')
;

SELECT * FROM PROPERTY;

SET IDENTITY_INSERT dbo.PROPERTY OFF
;

---TABLE 3: TREE INVENTORY

DROP TABLE TREE_INVENTORY;

CREATE TABLE TREE_INVENTORY (
    TREE_ID						INT	IDENTITY						CONSTRAINT PK_TREE_ID PRIMARY KEY
    ,SPECIES						VARCHAR(255)
    ,PLANTED_DATE			DATE
    ,HEIGHT							INT
    ,DIAMETER					FLOAT
);

SET IDENTITY_INSERT dbo.TREE_INVENTORY ON
;

INSERT INTO TREE_INVENTORY (TREE_ID, SPECIES, PLANTED_DATE, HEIGHT, DIAMETER) 
VALUES
	(1, 'Oak', '1999-03-15', 30, 3)
	,(2, 'Pine', '2001-04-17', 40, 2.5)
	,(3, 'Maple', '1980-09-23', 50, 4)
	,(4, 'Birch', '2005-08-30', 20, 1.5)
	,(5, 'Spruce', '2010-11-01', 35, 3.5)
	,(6, 'Cedar', '2000-05-21', 45, 3.2)
	,(7, 'Elm', '1998-07-15', 38, 2.8)
	,(8, 'Fir', '2003-11-10', 42, 3)
	,(9, 'Cherry', '1985-01-05', 47, 3.7)
	,(10, 'Walnut', '1975-02-28', 51, 4.1)
	,(11, 'Poplar', '1990-12-15', 36, 2.9)
	,(12, 'Redwood', '1965-03-25', 70, 6)
	,(13, 'Juniper', '1988-08-20', 32, 3.1)
	,(14, 'Hemlock', '1996-10-10', 37, 3)
	,(15, 'Magnolia', '2006-06-15', 25, 2.5)
	,(16, 'Willow', '1994-08-01', 28, 2.3)
	,(17, 'Peach', '1984-04-30', 35, 3.4)
	,(18, 'Olive', '1978-10-05', 48, 4)
	,(19, 'Palm', '2009-09-15', 20, 1.8)
	,(20, 'Banana', '2012-02-29', 15, 1.2)
	,(21, 'Apple', '1983-05-20', 33, 2.7)
	,(22, 'Orange', '1979-11-11', 49, 3.8)
	,(23, 'Lemon', '2004-07-03', 22, 2.2)
	,(24, 'Lime', '1995-05-06', 27, 2.6)
	,(25, 'Pear', '1987-09-09', 29, 2.4)
	,(26, 'Pecan', '1993-04-18', 31, 3.1)
	,(27, 'Plum', '1976-12-30', 52, 4.2)
	,(28, 'Almond', '1967-08-25', 53, 4.3)
	,(29, 'Blackberry', '1986-11-16', 39, 3.3)
	,(30, 'Raspberry', '1992-06-20', 34, 3)
	,(31, 'Strawberry', '1997-03-05', 23, 2.3)
	,(32, 'Blueberry', '2010-05-22', 18, 1.7)
	,(33, 'Kiwi', '2008-04-01', 19, 1.9)
	,(34, 'Grape', '1991-07-23', 41, 3.5)
	,(35, 'Cherry Blossom', '1982-01-30', 43, 3.6)
	,(36, 'Aspen', '1977-11-03', 54, 4.4)
	,(37, 'Dogwood', '1968-02-15', 55, 4.5)
	,(38, 'Tulip Tree', '1989-07-04', 44, 3.7)
	,(39, 'Cypress', '2002-10-02', 26, 2.7)
	,(40, 'Ginkgo', '2011-03-12', 24, 2.3)
	,(41, 'Sequoia', '1969-09-06', 56, 4.6)
	,(42, 'Sycamore', '1974-10-14', 57, 4.7)
	,(43, 'Holly', '1981-08-12', 46, 3.8)
	,(44, 'Ivy', '1999-12-31', 30, 2.9)
	,(45, 'Jasmine', '2007-07-14', 21, 2)
	,(46, 'Lavender', '2013-08-07', 16, 1.6)
	,(47, 'Marigold', '2014-10-10', 14, 1.4)
	,(48, 'Orchid', '2015-05-15', 13, 1.3)
	,(49, 'Rose', '2016-03-03', 12, 1.2)
	,(50, 'Sunflower', '2017-07-21', 11, 1.1)
;

SELECT * FROM TREE_INVENTORY;

SET IDENTITY_INSERT dbo.TREE_INVENTORY OFF
;


--TABLE 4: PROPERTY_TREE

DROP TABLE PROPERTY_TREE;

CREATE TABLE PROPERTY_TREE (
	PROPERTY_ID 						INT
	,TREE_ID								 INT
	,CONSTRAINT FK_PROPERTY_ID 						FOREIGN KEY (PROPERTY_ID) 						REFERENCES PROPERTY(PROPERTY_ID)
	,CONSTRAINT FK_TREE_ID 									FOREIGN KEY (TREE_ID) 									REFERENCES TREE_INVENTORY(TREE_ID)
	,CONSTRAINT PK_PROPERTY_TREE_ID			PRIMARY KEY (PROPERTY_ID, TREE_ID)
);


INSERT INTO PROPERTY_TREE(PROPERTY_ID, TREE_ID) 
VALUES
	(1, 12)
	,(2, 43)
	,(3, 2)
	,(4, 15)
	,(5, 7)
	,(6, 12)
	,(8, 2)
	,(9, 24)
	,(10, 39)
	,(1, 9)
	,(2, 46)
	,(3, 32)
	,(6, 21)
	,(7, 37)
	,(8, 7)
	,(9, 46)
	,(10, 3)
	,(1, 27)
	,(3, 43)
	,(4, 11)
	,(5, 28)
	,(7, 23)
	,(8, 15)
	,(9, 4)
	,(10, 24)
	,(5, 2)
	,(6, 46)
	,(7, 27)
	,(9, 12)
	,(10, 9)
	,(6, 31)
	,(7, 28)
	,(8, 37)
	,(10, 23)
	,(8, 39)
	,(8, 28)
	,(9, 15)
	,(10, 31)
	,(9, 7)
	,(10, 46)
;

SELECT * FROM PROPERTY_TREE
;

--- TABLE 5: JOB_TITLE

DROP TABLE JOB_TITLE;

CREATE TABLE JOB_TITLE (
    JOB_TITLE_ID						INT											IDENTITY	CONSTRAINT PK_JOB_TITLE_ID PRIMARY KEY
    ,TITLE									VARCHAR (255)
    ,HOURLY_RATE					DECIMAL
);

SET IDENTITY_INSERT dbo.JOB_TITLE ON
;

INSERT INTO JOB_TITLE (JOB_TITLE_ID, TITLE, HOURLY_RATE) VALUES
	(1, 'Manager', 150)
	,(2, 'Arborist', 50)
	,(3, 'Architect', 35)
	,(4, 'Gardener', 25)
;

SELECT * FROM JOB_TITLE;

SET IDENTITY_INSERT dbo.JOB_TITLE OFF
;

-- TABLE 6: QUALIFICATION

DROP TABLE QUALIFICATION;

CREATE TABLE QUALIFICATION(
	QUALIFICATION_LEVEL						INT						IDENTITY 	CONSTRAINT PK_QUALIFICATION_LEVEL 	PRIMARY KEY
	,QUALIFICATION_DESCRIPTION			VARCHAR(255)
);

SET IDENTITY_INSERT dbo.QUALIFICATION ON
;

INSERT INTO QUALIFICATION(QUALIFICATION_LEVEL, QUALIFICATION_DESCRIPTION)
VALUES 
	(1, 'Horticulture or Botany')
	,(2, 'General Gardening')
	,(3, 'Landscape Architecture')
	,(4, 'Garden Design')
	,(5, 'Alpine')
	,(6, 'Arborist')
	,(7, 'Plant Science')
;

SET IDENTITY_INSERT dbo.QUALIFICATION OFF
;

SELECT * FROM QUALIFICATION
;


---TABLE 7: EMPLOYEE

DROP TABLE EMPLOYEE;

CREATE TABLE EMPLOYEE (
    EMPLOYEE_ID							INT	IDENTITY							CONSTRAINT PK_EMPLOYEE_ID	PRIMARY KEY
    ,NAME										VARCHAR(255)							CONSTRAINT NN_CLIENT_NAME	NOT NULL
    ,ADDRESS									VARCHAR(255)
    ,CITY											VARCHAR(100)
    ,STATE										CHAR(2)
    ,ZIPCODE									CHAR(5)
    ,PHONE_NUMBER					VARCHAR(12)
    ,EMAIL										VARCHAR(255)
    ,QUALIFICATION_LEVEL		INT
    ,JOB_TITLE_ID							INT
	,MANAGER_ID							INT
	,CONSTRAINT FK_QUALIFICATION_LEVEL 					FOREIGN KEY (QUALIFICATION_LEVEL) 					REFERENCES QUALIFICATION(QUALIFICATION_LEVEL)
	,CONSTRAINT FK_JOB_TITLE_ID 										FOREIGN KEY (JOB_TITLE_ID) 										REFERENCES JOB_TITLE(JOB_TITLE_ID)
);	

SET IDENTITY_INSERT dbo.EMPLOYEE ON
;


INSERT INTO Employee (EMPLOYEE_ID, NAME, ADDRESS, CITY, STATE, ZIPCODE, PHONE_NUMBER, EMAIL, QUALIFICATION_LEVEL, JOB_TITLE_ID, MANAGER_ID)
VALUES
	(1,'John Smith', '123 Maple St', 'Springfield', 'SP', '12345', '123-456-7890', 'jsmith@example.com', 5, 1, NULL)
	,(2, 'Alice Johnson', '456 Oak Ln', 'Greenville', 'GV', '23456', '123-456-7891', 'ajohnson@example.com', 3, 4, 1)
	,(3, 'Bob Martin', '789 Pine Ave', 'Fairview', 'FV', '34567', '123-456-7892', 'bmartin@example.com', 5, 2, 1)
	,(4, 'Sarah White', '101 Birch Rd', 'Ridgewood', 'RW', '45678', '123-456-7893', 'swhite@example.com', 5, 2, 1)
	,(5, 'Paul Brown', '202 Cedar Blvd', 'Brookside', 'BS', '56789', '123-456-7894', 'pbrown@example.com', 5, 4, 1)
	,(6, 'Emma Roberts', '303 Redwood Cir', 'Kingsville', 'KV', '67890', '123-456-7895', 'eroberts@example.com', 3, 2, 1)
	,(7, 'Tom Clark', '404 Elm St', 'Lakeside', 'LS', '78901', '123-456-7896', 'tclark@example.com', 4, 4, 1)
	,(8, 'Lucy Green', '505 Willow Way', 'Hilltop', 'HT', '89012', '123-456-7897', 'lgreen@example.com', 7, 1, NULL)
	,(9, 'Peter Parker', '606 Magnolia Ave', 'Sunnydale', 'SD', '90123', '123-456-7898', 'pparker@example.com', 5, 2, 8)
	,(10, 'Mary Davis', '707 Aspen Ct', 'Cliffside', 'CS', '01234', '123-456-7899', 'mdavis@example.com', 4, 3, 8)
	,(11, 'Mike Lee', '808 Fir St', 'Riverbend', 'RB', '12340', '123-456-7800', 'mlee@example.com', 4, 3, 8);
;

SELECT * FROM EMPLOYEE;

SET IDENTITY_INSERT dbo.EMPLOYEE OFF
;


--TABLE 8: QUALIFICATION_EMPLOYEE
DROP TABLE QUALIFICATION_EMPLOYEE;

CREATE TABLE QUALIFICATION_EMPLOYEE(
	QUALIFICATION_LEVEL						INT
	,EMPLOYEE_ID										INT
	,CONSTRAINT FK_QUALIFICATION_LEVEL_B 					FOREIGN KEY (QUALIFICATION_LEVEL) 											REFERENCES QUALIFICATION(QUALIFICATION_LEVEL)
	,CONSTRAINT FK_EMPLOYEE_ID 											FOREIGN KEY (EMPLOYEE_ID) 																REFERENCES EMPLOYEE(EMPLOYEE_ID)
	,CONSTRAINT PK_QUALIFICATION_EMPLOYEE_ID			PRIMARY KEY (QUALIFICATION_LEVEL, EMPLOYEE_ID)
);

INSERT INTO QUALIFICATION_EMPLOYEE (QUALIFICATION_LEVEL, EMPLOYEE_ID)
VALUES
	 (5, 1) -- John Smith
	,(3, 2) -- Alice Johnson
	,(5, 3) -- Bob Martin
	,(5, 4) -- Sarah White
	,(5, 5) -- Paul Brown
	,(3, 6) -- Emma Roberts
	,(4, 7) -- Tom Clark
	,(7, 8) -- Lucy Green
	,(5, 9) -- Peter Parker
	,(4, 10) -- Mary Davis
	,(4, 11); -- Mike Lee


SELECT* FROM QUALIFICATION_EMPLOYEE

---TABLE 9: SERVICES OFFERED 

DROP TABLE SERVICES_OFFERED;

CREATE TABLE SERVICES_OFFERED (
    SERVICE_ID									INT IDENTITY						CONSTRAINT PK_SERVICE_ID PRIMARY KEY
    ,NAME											VARCHAR(255)
    ,DESCRIPTION								TEXT
    ,QUALIFICATION_LEVEL			INT
	,CONSTRAINT FK_QUALIFICATION_LEVEL_C 					FOREIGN KEY (QUALIFICATION_LEVEL) 				REFERENCES QUALIFICATION(QUALIFICATION_LEVEL)
);

SET IDENTITY_INSERT dbo.SERVICES_OFFERED ON
;

INSERT INTO SERVICES_OFFERED (SERVICE_ID, NAME, DESCRIPTION, QUALIFICATION_LEVEL) 
VALUES
	(1, 'Tree Trimming', 'Removal of excess branches', 7)
	,(2, 'Soil Testing', 'Checking pH levels of the soil', 1)
	,(3, 'Fertilization', 'Adding nutrients to soil', 7)
	,(4, 'Pest Control', 'Removal of harmful insects', 3)
	,(5, 'Tree Removal', 'Removing trees from property', 7)
	,(6, 'Stump Grinding', 'Grinding of tree stumps', 5)
	,(7, 'Mulching', 'Adding mulch to garden beds', 6)
	,(8, 'Planting', 'Adding new plants to landscape', 5)
	,(9, 'Irrigation', 'Installing and maintaining irrigation systems', 2)
	,(10, 'Lawn Mowing', 'Cutting grass to a specific height', 3)
	,(11, 'Hedge Trimming', 'Shaping and trimming hedges', 1)
	,(12, 'Weed Control', 'Removal of unwanted plants', 3)
	,(13, 'Landscape Design', 'Designing garden and landscape layouts', 2)
	,(14, 'Garden Clean-Up', 'General tidying up of gardens', 1)
	,(15, 'Leaf Removal', 'Removing fallen leaves', 6)
	,(16, 'Composting', 'Creating and managing compost', 3)
	,(17, 'Aeration', 'Introducing air into soil', 2)
	,(18, 'Seeding', 'Introducing new grass seeds', 3)
	,(19, 'Snow Removal', 'Clearing snow from pathways', 4)
	,(20, 'Garden Consultation', 'Offering gardening advice', 4)
	,(21, 'Pruning', 'Cutting back plants for growth', 6)
	,(22, 'Transplanting', 'Moving plants to new locations', 5)
	,(23, 'Gutter Cleaning', 'Removing debris from gutters', 6)
	,(24, 'Lawn Treatment', 'Applying treatments for lawn health', 4)
	,(25, 'Organic Gardening', 'Using organic methods and materials', 7)
	,(26, 'Lawn Edging', 'Creating clear boundaries in lawn', 2)
	,(27, 'Topiary', 'Creating shapes in plants', 7)
	,(28, 'Landscape Lighting', 'Installing lights in gardens', 2)
	,(29, 'Hardscape', 'Creating non-living features like patios', 1)
	,(30, 'Water Feature Installation', 'Installing ponds and fountains', 1)
	,(31, 'Vertical Gardening', 'Creating gardens on vertical surfaces', 4)
	,(32, 'Rock Gardens', 'Creating gardens with rocks and alpines', 5)
	,(33, 'Garden Maintenance', 'Regular upkeep of gardens', 2)
	,(34, 'Turf Installation', 'Laying down grass surfaces', 1)
	,(35, 'Fencing', 'Installing and repairing fences', 1)
	,(36, 'Greenhouse Management', 'Maintaining plants in greenhouses', 4)
	,(37, 'Tree Survey', 'Assessing health and number of trees', 7)
	,(38, 'Plant Identification', 'Identifying plant species', 3)
	,(39, 'Lawn Restoration', 'Bringing damaged lawns back to health', 4)
	,(40, 'Garden Workshops', 'Teaching gardening skills', 1)
	,(41, 'Paving', 'Laying down paths and patios', 5)
	,(42, 'Green Roofing', 'Installing plant-covered roofs', 3)
	,(43, 'Drought Management', 'Gardening in dry conditions', 7)
	,(44, 'Garden Art', 'Installing art pieces in gardens', 3)
	,(45, 'Permaculture', 'Sustainable garden design', 3)
	,(46, 'Tree Grafting', 'Joining two plants together', 4)
	,(47, 'Hydroponics', 'Growing plants in water', 4)
	,(48, 'Garden Tours', 'Guided tours of gardens', 5)
	,(49, 'Aquaponics', 'Combining fish and plant cultivation', 7)
	,(50, 'Rainwater Harvesting', 'Collecting and using rainwater', 5)
;

SELECT * FROM SERVICES_OFFERED;

SET IDENTITY_INSERT dbo.SERVICES_OFFERED OFF
;


---TABLE 10: WORK ORDER HEADER

DROP TABLE WORK_ORDER_HEADER;

CREATE TABLE WORK_ORDER_HEADER (
    WORK_ORDER_HEADER_ID							INT	 IDENTITY						CONSTRAINT PK_WORK_ORDER_HEADER_ID	PRIMARY KEY
    ,PROPERTY_ID														INT
    ,DATE_VALUE														DATE
	,CONSTRAINT FK_PROPERTY_ID_A 				FOREIGN KEY (PROPERTY_ID)	REFERENCES PROPERTY(PROPERTY_ID)
);

SET IDENTITY_INSERT dbo.WORK_ORDER_HEADER ON
;

INSERT INTO  WORK_ORDER_HEADER (WORK_ORDER_HEADER_ID, PROPERTY_ID, DATE_VALUE) VALUES
	(1, 7, '2023-03-15')
	,(2, 40, '2023-11-28')
	,(3, 7, '2023-08-07')
	,(4, 28, '2023-06-12')
	,(5, 2, '2023-10-03')
	,(6, 2, '2024-01-14')
	,(7, 12, '2023-12-25')
	,(8, 43, '2024-02-06')
	,(9, 47, '2023-05-21')
	,(10, 18, '2023-09-13')
	,(11, 28, '2023-07-18')
	,(12, 44, '2024-04-26')
	,(13, 5, '2023-04-30')
	,(14, 36, '2023-11-06')
	,(15, 20, '2024-01-27')
	,(16, 42, '2024-03-11')
	,(17, 27, '2023-12-12')
	,(18, 25, '2023-08-22')
	,(19, 39, '2023-06-28')
	,(20, 2, '2023-10-17')
	,(21, 43, '2024-01-04')
	,(22, 25, '2023-07-02')
	,(23, 5, '2023-05-31')
	,(24, 22, '2023-09-26')
	,(25, 39, '2023-08-09')
	,(26, 12, '2023-12-02')
	,(27, 25, '2024-02-16')
	,(28, 28, '2023-07-12')
	,(29, 39, '2023-06-05')
	,(30, 42, '2024-03-21')
	,(31, 32, '2024-04-14')
	,(32, 5, '2023-09-04')
	,(33, 20, '2023-05-16')
	,(34, 50, '2023-10-26')
	,(35, 18, '2024-01-20')
	,(36, 2, '2023-12-20')
	,(37, 28, '2023-08-16')
	,(38, 44, '2023-06-19')
	,(39, 2, '2024-02-11')
	,(40, 28, '2023-04-27')
	,(41, 33, '2023-11-13')
	,(42, 50, '2023-09-19')
	,(43, 37, '2023-07-29')
	,(44, 11, '2024-03-05')
	,(45, 45, '2024-01-30')
	,(46, 25, '2023-05-06')
	,(47, 12, '2023-10-08')
	,(48, 50, '2023-12-07')
	,(49, 47, '2024-02-26')
	,(50, 10, '2023-04-12')
;

SELECT * FROM WORK_ORDER_HEADER;

SET IDENTITY_INSERT dbo.WORK_ORDER_HEADER OFF
;

---TABLE 11: WORK ORDER DETAIL

DROP TABLE WORK_ORDER_DETAIL;

CREATE TABLE WORK_ORDER_DETAIL (
    WORK_ORDER_DETAIL_ID						INT						 IDENTITY	CONSTRAINT PK_WORK_ORDER_DETAIL_ID PRIMARY KEY
    ,WORK_ORDER_HEADER_ID					INT
    ,TREE_ID														INT
    ,SERVICE_ID													INT
	,CONSTRAINT FK_WORK_ORDER_HEADER_ID 				FOREIGN KEY (WORK_ORDER_HEADER_ID)	REFERENCES WORK_ORDER_HEADER(WORK_ORDER_HEADER_ID)
	,CONSTRAINT FK_TREE_ID_B 											FOREIGN KEY (TREE_ID)				REFERENCES TREE_INVENTORY(TREE_ID)
	,CONSTRAINT FK_SERVICE_ID_B 										FOREIGN KEY (SERVICE_ID)			REFERENCES SERVICES_OFFERED(SERVICE_ID)

);

SET IDENTITY_INSERT dbo.WORK_ORDER_DETAIL ON
;

INSERT INTO WORK_ORDER_DETAIL (WORK_ORDER_DETAIL_ID, WORK_ORDER_HEADER_ID, TREE_ID, SERVICE_ID) VALUES
	(1, 1, 28, 18)
	,(2, 2, 37, 35)
	,(3, 3, 28, 24)
	,(4, 4, 15, 28)
	,(5, 5, 43, 6)
	,(6, 6, 43, 29)
	,(7, 7, 46, 4)
	,(8, 8, 39, 29)
	,(9, 9, 15, 1)
	,(10, 10, 7, 1)
	,(11, 11, 15, 22)
	,(12, 12, 4, 15)
	,(13, 13, 7, 37)
	,(14, 14, 9, 18)
	,(15, 15, 3, 27)
	,(16, 16, 23, 17)
	,(17, 17, 23, 4)
	,(18, 18, 28, 21)
	,(19, 19, 28, 16)
	,(20, 20, 43, 24)
	,(21, 21, 39, 38)
	,(22, 22, 28, 24)
	,(23, 23, 7, 29)
	,(24, 24, 43, 2)
	,(25, 25, 28, 42)
	,(26, 26, 46, 28)
	,(27, 27, 28, 8)
	,(28, 28, 15, 33)
	,(29, 29, 28, 8)
	,(30, 30, 23, 1)
	,(31, 31, 46, 10)
	,(32, 32, 7, 7)
	,(33, 33, 3, 21)
	,(34, 34, 46, 39)
	,(35, 35, 7, 37)
	,(36, 36, 43, 10)
	,(37, 37, 15, 47)
	,(38, 38, 4, 11)
	,(39, 39, 43, 26)
	,(40, 40, 15, 37)
	,(41, 41, 27, 47)
	,(42, 42, 46, 18)
	,(43, 43, 7, 26)
	,(44, 44, 9, 13)
	,(45, 45, 46, 3)
	,(46, 46, 28, 23)
	,(47, 47, 46, 40)
	,(48, 48, 46, 50)
	,(49, 49, 15, 33)
	,(50, 50, 39, 3)
;

SELECT * FROM WORK_ORDER_DETAIL;

SET IDENTITY_INSERT dbo.WORK_ORDER_DETAIL OFF
;

---TABLE 12: INVOICE

DROP TABLE INVOICE;

CREATE TABLE INVOICE (
    INVOICE_ID												INT									IDENTITY 	CONSTRAINT PK_INVOICE_ID PRIMARY KEY
    ,WORK_ORDER_HEADER_ID				INT
    ,INVOICE_DESC										VARCHAR(255)
    ,TOTAL_COST											DECIMAL
    ,DUE_DATE												DATE
    ,PAYMENT_STATUS									VARCHAR(100)				CONSTRAINT CK_PAYMENT_STATUS 			CHECK (PAYMENT_STATUS IN ('PAID', 'DUE'))
	,CONSTRAINT FK_WORK_ORDER_HEADER_ID_D 				FOREIGN KEY (WORK_ORDER_HEADER_ID)	REFERENCES WORK_ORDER_HEADER(WORK_ORDER_HEADER_ID)
);

SET IDENTITY_INSERT dbo.INVOICE ON
;

INSERT INTO Invoice (INVOICE_ID, WORK_ORDER_HEADER_ID, INVOICE_DESC, TOTAL_COST, DUE_DATE, PAYMENT_STATUS) VALUES
	(1, 37, 'Tree Trimming Job', 500, '2024-01-01', 'Paid')
	,(2, 24, 'Soil Test Job', 100, '2024-02-01', 'Due')
	,(3, 46, 'Fertilization Job', 200, '2024-03-01', 'Due')
	,(4, 2, 'Pest Control Job', 250, '2024-04-01', 'Paid')
	,(5, 8, 'Tree Removal Job', 600, '2024-05-01', 'Paid')
	,(6, 42, 'Stump Grinding Job', 300, '2024-06-01', 'Due')
	,(7, 33, 'Mulching Job', 150, '2024-07-01', 'Paid')
	,(8, 30, 'Planting Job', 400, '2024-08-01', 'Due')
	,(9, 16, 'Irrigation Job', 350, '2024-09-01', 'Paid')
	,(10, 27, 'Lawn Mowing Job', 100, '2024-10-01', 'Due')
	,(11, 48, 'Hedge Trimming', 200, '2024-11-01', 'Due')
	,(12, 6, 'Weed Control', 50, '2024-12-01', 'Paid')
	,(13, 40, 'Landscape Design', 1000, '2024-01-13', 'Due')
	,(14, 11, 'Garden Clean-Up', 250, '2024-01-14', 'Paid')
	,(15, 13, 'Leaf Removal', 75, '2024-01-15', 'Paid')
	,(16, 23, 'Topiary Job', 450, '2024-01-16', 'Due')
	,(17, 22, 'Composting Job', 125, '2024-01-17', 'Paid')
	,(18, 3, 'Fencing Job', 800, '2024-01-18', 'Paid')
	,(19, 32, 'Paving Job', 950, '2024-01-19', 'Due')
	,(20, 36, 'Garden Bed Job', 550, '2024-01-20', 'Due')
	,(21, 9, 'Seeding Job', 250, '2024-01-21', 'Paid')
	,(22, 50, 'Watering Job', 60, '2024-01-22', 'Due')
	,(23, 21, 'Aerating Job', 300, '2024-01-23', 'Due')
	,(24, 29, 'Transplanting Job', 500, '2024-01-24', 'Paid')
	,(25, 39, 'Flower Planting', 320, '2024-01-25', 'Paid')
	,(26, 20, 'Sod Laying', 700, '2024-01-26', 'Due')
	,(27, 35, 'Rock Garden', 1100, '2024-01-27', 'Due')
	,(28, 45, 'Pond Installation', 2100, '2024-01-28', 'Paid')
	,(29, 15, 'Decking Job', 3200, '2024-01-29', 'Due')
	,(30, 7, 'Patio Job', 1500, '2024-01-30', 'Paid')
	,(31, 25, 'Pruning Job', 400, '2024-02-01', 'Due')
	,(32, 28, 'Grafting Job', 350, '2024-02-02', 'Due')
	,(33, 38, 'Organic Farming', 600, '2024-02-03', 'Paid')
	,(34, 26, 'Sprinkler System', 750, '2024-02-04', 'Due')
	,(35, 18, 'Drip Irrigation', 850, '2024-02-05', 'Due')
	,(36, 44, 'Mulch Delivery', 100, '2024-02-06', 'Paid')
	,(37, 1, 'Greenhouse Setup', 2000, '2024-02-07', 'Due')
	,(38, 19, 'Trellis Installation', 650, '2024-02-08', 'Due')
	,(39, 5, 'Garden Light', 500, '2024-02-09', 'Paid')
	,(40, 34, 'Soil pH Testing', 80, '2024-02-10', 'Paid')
	,(41, 12, 'Bug Control', 220, '2024-02-11', 'Due')
	,(42, 10, 'Vegetable Garden', 750, '2024-02-12', 'Due')
	,(43, 49, 'Flower Arrangement', 320, '2024-02-13', 'Paid')
	,(44, 14, 'Garden Tour', 50, '2024-02-14', 'Due')
	,(45, 31, 'Lawn Treatment', 200, '2024-02-15', 'Due')
	,(46, 41, 'Snow Removal', 300, '2024-02-16', 'Paid')
	,(47, 4, 'Compost Sale', 50, '2024-02-17', 'Paid')
	,(48, 43, 'Vertical Garden', 900, '2024-02-18', 'Due')
	,(49, 47, 'Organic Pesticides', 120, '2024-02-19', 'Due')
	,(50, 17, 'Birdhouse Installation', 150, '2024-02-20', 'Paid')
;

SELECT * FROM INVOICE;

SET IDENTITY_INSERT dbo.INVOICE OFF
;
---TABLE 13: PAYMENT

DROP TABLE PAYMENT;

CREATE TABLE PAYMENT (
    PAYMENT_ID												INT													IDENTITY 	CONSTRAINT _PK_PAYMENT_ID PRIMARY KEY
    ,INVOICE_ID													INT
    ,AMOUNT														DECIMAL
    ,DATE																DATE
	,CONSTRAINT FK_INVOICE_ID				FOREIGN KEY (INVOICE_ID)	REFERENCES INVOICE(INVOICE_ID)
);

SET IDENTITY_INSERT dbo.PAYMENT ON
;

INSERT INTO Payment (Payment_ID, Invoice_ID, Amount, Date) VALUES
	(1, 1, 500, '2024-01-01')
	,(2, 4, 250, '2024-04-01')
	,(3, 5, 600, '2024-05-01')
	,(4, 7, 150, '2024-07-01')
	,(5, 9, 350, '2024-09-01')
	,(6, 12, 50, '2024-12-01')
	,(7, 14, 250, '2024-01-14')
	,(8, 15, 75, '2024-01-15')
	,(9, 17, 125, '2024-01-17')
	,(10, 18, 800, '2024-01-18')
	,(11, 21, 250, '2024-01-21')
	,(12, 24, 500, '2024-01-24')
	,(13, 25, 320, '2024-01-25')
	,(14, 28, 2100, '2024-01-28')
	,(15, 30, 1500, '2024-01-30')
	,(16, 33, 600, '2024-02-03')
	,(17, 36, 100, '2024-02-06')
	,(18, 39, 500, '2024-02-09')
	,(19, 40, 80, '2024-02-10')
	,(20, 43, 320, '2024-02-13')
	,(21, 46, 300, '2024-02-16')
	,(22, 47, 50, '2024-02-17')
	,(23, 50, 150, '2024-02-20')
;

SELECT * FROM PAYMENT;
SET IDENTITY_INSERT dbo.PAYMENT OFF
;


/* 
Views and Procedures
Run each part individually to avoid errors. 
*/

/* View 1*/

--PART 1

DROP VIEW IF EXISTS DBO.PROPERTY_POINT_OF_CONTACT_V
; 

--PART 2
/* 
THIS VIEW IS TO SHOW THE POINT OF CONTACT FOR EACH PROPERTY. 
IT PULLS THE PROPERTY ID, CLIENT ID, CLIENT NAME, CLIENT PHONE,
CLIENT EMAIL, PROPERTY ADDRESS INFO (STREET, CITY, ETC.) AND 
THE TOTAL NUM OF PROPERTIES OWNED BY THE CLIENT. 
*/

CREATE VIEW DBO.PROPERTY_POINT_OF_CONTACT_V AS 
SELECT 
	P.PROPERTY_ID
	,C.CLIENT_ID
	,C.NAME										AS CLIENT_NAME
	,C.PHONE_NUMBER					AS CLIENT_PHONE
	,P.ADDRESS
	,P.CITY
	,P.STATE
	,P.ZIPCODE 
	,COUNT(P.PROPERTY_ID) OVER (PARTITION BY C.CLIENT_ID)	AS NUM_PROP
FROM dbo.CLIENT AS C 
INNER JOIN dbo.PROPERTY			AS P 
	ON C.CLIENT_ID = P.CLIENT_ID
;

--PART 3

SELECT *
FROM DBO.PROPERTY_POINT_OF_CONTACT_V A
ORDER BY
	A.NUM_PROP DESC
	,A.CLIENT_ID
;

-- PART 4

DROP VIEW IF EXISTS DBO.PROPERTY_POINT_OF_CONTACT_V
; 


/* VIEW 2*/

DROP VIEW IF EXISTS DBO.EMPLOYEE_QUALIFICATION_V
; 

CREATE VIEW DBO.EMPLOYEE_QUALIFICATION_V AS 
SELECT 
	E.EMPLOYEE_ID
	,Q.QUALIFICATION_LEVEL
	,Q.QUALIFICATION_DESCRIPTION
	,J.TITLE
	,E.NAME									AS EMPLOYEE_NAME
	,E.PHONE_NUMBER				AS EMPLOYEE_PHONE
	,E.EMAIL									AS EMPLOYEE_EMAIL
FROM  dbo.EMPLOYEE E
LEFT JOIN dbo.QUALIFICATION_EMPLOYEE QE
	ON E.EMPLOYEE_ID = QE.EMPLOYEE_ID

LEFT JOIN DBO.QUALIFICATION Q
	ON QE.QUALIFICATION_LEVEL = Q.QUALIFICATION_LEVEL

LEFT JOIN DBO.JOB_TITLE J
	ON E.JOB_TITLE_ID = J.JOB_TITLE_ID
;

SELECT *
FROM DBO.EMPLOYEE_QUALIFICATION_V A
;


DROP VIEW IF EXISTS DBO.EMPLOYEE_QUALIFICATION_V
; 



/* Procedure 1*/

--PART 1
-- Drop the procedure If it already exists.
DROP PROCEDURE IF EXISTS dbo.EMPLOYEE_QUALIFICATION_P;  
GO  

--PART 2
-- Create the procedure.
CREATE OR ALTER PROC dbo.EMPLOYEE_QUALIFICATION_P AS 

	SET NOCOUNT ON; -- Turns off the rows affected message.
	
	SELECT 
		E.EMPLOYEE_ID
		,E.NAME
		,E.JOB_TITLE_ID
		,E.QUALIFICATION_LEVEL
		,Q.QUALIFICATION_DESCRIPTION
	FROM DBO.EMPLOYEE E

	INNER JOIN DBO.QUALIFICATION Q
		ON E.QUALIFICATION_LEVEL = Q.QUALIFICATION_LEVEL
	; 
	
	RETURN 0; -- Returns all records.
GO

-- PART 3
-- Execute the procedure.
EXEC dbo.EMPLOYEE_QUALIFICATION_P;
GO

-- ALTERING THE PROCEDURE - PART 1
-- alter the dbo.employee_	qualification procedure

CREATE OR ALTER PROC dbo.EMPLOYEE_QUALIFICATION_P @QUALIFICATION_LEVEL INT AS
	SET NOCOUNT ON; 

	IF @QUALIFICATION_LEVEL > 0
		BEGIN 

		SELECT 
			Q.QUALIFICATION_LEVEL
			,Q.QUALIFICATION_DESCRIPTION
			,E.EMPLOYEE_ID
			,E.NAME
			,E.JOB_TITLE_ID
		FROM DBO.QUALIFICATION Q
		
		INNER JOIN DBO.EMPLOYEE E
			ON Q.QUALIFICATION_LEVEL = E.QUALIFICATION_LEVEL
		
		WHERE 1=1 
			AND Q.QUALIFICATION_LEVEL = @QUALIFICATION_LEVEL; 
		
		RETURN 0; 
		END 
		
		ELSE 
		BEGIN 
			RETURN -1; 
		END; 
GO

-- PART 3
EXEC dbo.EMPLOYEE_QUALIFICATION_P @QUALIFICATION_LEVEL= 5;
GO

--DROP PROC
DROP PROCEDURE IF EXISTS dbo.EMPLOYEE_QUALIFICATION_P;  
GO  
