--Perform the instructions indicated below using MySQL Server. Write your SQL scripts commands used in executing the instructions or the answer to the questions indicated. 
--1.	Open XAMPP Control Panel\MySQL\Shell.  What login name did you use in logging on to MySQL Server?  LMTC\SQLEXPRESS
--2.	What password was used in logging on? NONE
--3.	Create a database named using the following name format: LastNameFirstName_Exer1
--CREATE Database LiChiaMariaLuisa_Exer1
--4.	Use the newly created database.  USE LiChiaMariaLuisa_Exer1
--5.	What is the name of the newly created database? LiChiaMariaLuisa_Exer1

-- initialize relational dbms creation
CREATE Database LiChiaMariaLuisa_Exer1

-- use the database
USE LiChiaMariaLuisa_Exer1


--6.	Create the Branch table.
CREATE TABLE BRANCH
(BRANCH_NO char(1) not null primary key,
BRANCH_NAME char (20) ,
BRANCH_LOC varchar(20),
NO_EMPLOYEES char(2));

--no employees  datatype updated

--7.	Create the Publisher table.
CREATE TABLE PUBLISHER
(PUB_CODE char(2) not null primary key,
PUB_NAME char (20) ,
PUB_CITY char(20),
PUB_STATE char(2));

--8.	Create the Author table.
CREATE TABLE AUTHOR
(AUTHOR_NO char(2) not null primary key,
AUTHOR_LAST char (20) ,
AUTHOR_FIRST char(20));


--9.	Create the Book table.
CREATE TABLE BOOK
(BOOK_CODE char(4) not null primary key,
BOOK_TITLE char (30) ,
PUB_CODE char(2),
BOOK_TYPE char (3) ,
BOOK_PRICE float(4),
PAPERBACK char(1));


--10.	Create the Written table.
CREATE TABLE WRITTEN
(BOOK_CODE char(4) not null,
AUTHOR_CODE char (2) not null ,
SEQUENCE_NO numeric(1,0),
primary key (BOOK_CODE,AUTHOR_CODE)
);

--11.	Create the Inventory table.
CREATE TABLE INVENTORY
(BOOK_CODE char(4) not null,
BRANCH_NO char (1) not null ,
UNITS_ON_HAND numeric(1,0),
primary key (BOOK_CODE,BRANCH_NO)
);

--12.	Add all the records for Branch table.
INSERT INTO BRANCH(BRANCH_NO,BRANCH_NAME,BRANCH_LOC,NO_EMPLOYEES)
VALUES
('1','Henrys Downtown','16 Riverview','10'),
('2','Henrys on the Hill','1289 Bedford','06'),
('3','Henrys Brentwood','Brentwood Mall','15'),
('4','Henrys Eastshore','Eastshore Mall','09')
;
--13.	Add all the records for the Publisher table.  
INSERT INTO PUBLISHER (
	PUB_CODE,
	PUB_NAME, 
	PUB_CITY, 
	PUB_STATE

)
VALUES
('AH','Arkham House Publ.','Sauk City','WI'),
('AP','Arcade Publishing','New York','NY'),
('AW','Addison Wesley','Reading','MA'),
('BB','Bantam Books','New York','NY'),
('BF','Best and Furrow','Boston','MA'),
('JT','Jeremy P. Tarcher','Los Angeles','CA'),
('MP','McPherson and Co.','Kingston','NY'),
('PB','Pocket Books','New York','NY'),
('RH','Random House','New York','NY'),
('RZ','Rizzoli','New York','NY'),
('SB','Schoken Books','New York','NY'),
('SI','Signet','New York','NY'),
('TH','Thames and Hudson','New York','NY'),
('WN','W.W. Norton and Co.','New York','NY')
;



--14.	Add all the records for the Author table.  
INSERT INTO AUTHOR (
	AUTHOR_NO,
	AUTHOR_LAST,
	AUTHOR_FIRST
	
)
VALUES
('01','Archer','Jeffrey'),
('02','Christie','Agatha'),
('03','Clarke','Arthur C.'),
('04','Francis','Dick'),
('05','Cussler','Clive'),
('06','King','Stephen'),
('07','Pratt','Philip'),
('08','Adamski','Jospeh'),
('10','Harmon','Willis'),
('11','Rheingold','Howard'),
('12','Owen','Barbara'),
('13','Williams','Peter'),
('14','Kafka','Franz'),
('15','Novalis',''),
('16','Lovecraft','H.P.'),
('17','Paz','Octavio'),
('18','Camus','Albert'),
('19','Castleman','Riva'),
('20','Zinbardo','Philip'),
('21','Gimferrer','Pere'),
('22','Southworth','Rod'),
('23','Wray','Robert')
;
--15.	Add all the records for the Book table. 

INSERT INTO BOOK (
	BOOK_CODE,
	BOOK_TITLE,
	PUB_CODE,
	BOOK_TYPE,
	BOOK_PRICE,
	PAPERBACK
	
)
VALUES
('0180','Shyness','BB','PSY','7.65','Y'),
('0189','Kane and Abel','PB','FIC','5.55','Y'),
('0200','Stranger','BB','FIC','8.75','Y'),
('0378','Dunwich Horror and Others','PB','HOR','19.75','N'),
('079X','Smokescreen','PB','MYS','4.55','Y'),
('0808','Knockdown','PB','MYS','4.75','Y'),
('1351','Cujo','SI','HOR','6.65','Y'),
('1382','Marcel and Duchamp','PB','ART','11.25','Y'),
('138X','Death on the Nile','BB','MYS','3.95','Y'),
('2226','Ghost from the Grand Banks','BB','SFI','19.95','N'),
('2281','Prints of the 20th Century','PB','ART','13.25','Y'),
('2766','Prodigal Daughter','PB','FIC','5.45','Y'),
('2908','Hymns to the Night','BB','POE','6.75','Y'),
('3350','Higher Creativity','PB','PSY','9.75','Y'),
('3743','First Among Equals','PB','FIC','3.95','Y'),
('3906','Vortex','BB','SUS','5.45','Y'),
('5163','Organ','SI','MUS','16.95','Y'),
('5790','Database Systems','BF','CS','54.95','N'),
('6128','Evil Under the Sun','PB','MYS','4.45','Y'),
('6328','Vixen 07','BB','SUS','5.55','Y'),
('669X','A Guide to SQL','BF','CS','23.95','Y'),
('6908','DOS Essentials','BF','CS','20.5','Y'),
('7405','Night Probe','BB','SUS','5.65','Y'),
('7443','Carrie','SI','HOR','6.75','Y'),
('7559','Risk','PB','MYS','3.95','Y'),
('7947','dBASE Programming','BF','CS','39.9','Y'),
('8092','Magritte','SI','ART','21.95','N'),
('8720','Castle','BB','FIC','12.15','Y'),
('9611','Amerika','BB','FIC','10.95','Y')

;


--16.	Add all the records for the Written table


INSERT INTO WRITTEN (
	BOOK_CODE,
	AUTHOR_CODE,
	SEQUENCE_NO
	
)
VALUES
('0180','20','1'),
('0189','01','1'),
('0200','18','1'),
('0378','16','1'),
('079X','04','1'),
('0808','04','1'),
('1351','06','1'),
('1382','17','1'),
('138X','02','1'),
('2226','03','1'),
('2281','19','1'),
('2766','01','1'),
('2908','15','1'),
('3350','10','1'),
('3350','11','2'),
('3743','01','1'),
('3906','05','1'),
('5163','12','2'),
('5163','13','1'),
('5790','07','1'),
('5790','08','2'),
('6128','02','1'),
('6328','05','1'),
('669X','07','1'),
('6908','22','1'),
('7405','05','1'),
('7443','06','1'),
('7559','04','1'),
('7947','07','1'),
('7947','23','2'),
('8092','21','1'),
('8720','14','1'),
('9611','14','1')

;




--17.	Add all the records for the Inventory table


INSERT INTO INVENTORY (
	BOOK_CODE,
	BRANCH_NO,
	UNITS_ON_HAND
	
)
VALUES
('0180','1','2'),
('0189','2','2'),
('0200','1','1'),
('0200','2','3'),
('079X','2','1'),
('079X','3','2'),
('079X','4','3'),
('1351','1','1'),
('1351','2','4'),
('1351','3','2'),
('138X','2','3'),
('2226','1','3'),
('2226','3','2'),
('2226','4','1'),
('2281','4','3'),
('2766','3','2'),
('2908','1','3'),
('2908','4','1'),
('3350','1','2'),
('3906','2','1'),
('3906','3','2'),
('5163','1','1'),
('5790','4','2'),
('6128','2','4'),
('6128','3','3'),
('6328','2','2'),
('669X','1','1'),
('6908','2','2'),
('7405','3','2'),
('7559','2','2'),
('7947','2','2'),
('8092','3','1'),
('8720','1','3'),
('9611','1','2')

;

--18.	Display all the records in the Branch table.
SELECT* FROM dbo.BRANCH
--19.	Display all the records in the Publisher table.
SELECT* FROM dbo.PUBLISHER
--20.	Display all the records in the Author table.
SELECT* FROM dbo.AUTHOR
--21.	Display all the records in the Book table.
SELECT* FROM dbo.BOOK
--22.	Display all the records in the Written table.
SELECT* FROM dbo.WRITTEN
--23.	Display all the records in the Branch table which are located in either the Brentwood or Eastshore mall.

SELECT* FROM dbo.BRANCH WHERE dbo.BRANCH.BRANCH_LOC like 'Brentwood%' OR dbo.BRANCH.BRANCH_LOC like 'Eastshore%';
--24.	How many records were displayed in No. 23?
SELECT count(BRANCH_NO) AS TOTAL_COUNT
FROM dbo.BRANCH WHERE dbo.BRANCH.BRANCH_LOC like 'Brentwood%' OR dbo.BRANCH.BRANCH_LOC like 'Eastshore%';
--25.	Display the publisher’s name and the city of those publishers whose name start with the letter A or B and are located in New York.
SELECT* FROM dbo.PUBLISHER
WHERE PUBLISHER.PUB_CITY = 'New York'
AND (PUBLISHER.PUB_NAME LIKE 'A%' OR PUBLISHER.PUB_NAME LIKE 'B%')

--26.	How many records were displayed in No. 25?
SELECT COUNT(PUB_CODE) AS TOTAL_COUNT FROM dbo.PUBLISHER
WHERE PUBLISHER.PUB_CITY = 'New York'
AND (PUBLISHER.PUB_NAME LIKE 'A%' OR PUBLISHER.PUB_NAME LIKE 'B%')

--27.	Display the author number and author’s last name of all the records in the Author table with no entries in its author_first field.

SELECT AUTHOR_NO,AUTHOR_LAST FROM dbo.AUTHOR
WHERE AUTHOR_FIRST ='';

--28.	How many records were displayed in No. 27?

SELECT COUNT(AUTHOR_NO) AS TOTAL_COUNT FROM dbo.AUTHOR
WHERE AUTHOR_FIRST ='';


--29.	Change all records in the Author table with misspelled first name Jospeh to Joseph.
update AUTHOR
set AUTHOR_FIRST = replace(AUTHOR_FIRST, 'Jospeh' , 'Joseph')

--30.	How many records were changed in No. 29?



--31.	Display the title of all paperback books priced below 20.00 from the Book table.

SELECT BOOK_TITLE FROM dbo.BOOK
WHERE PAPERBACK ='Y';
--32.	How many records were displayed in No. 31?

SELECT COUNT(BOOK_TITLE) AS TOTAL_COUNT FROM dbo.BOOK
WHERE PAPERBACK ='Y';

--33.	Display the title and price of all Suspense or Mystery books whose price ranges from 20.00 to 50.00.

SELECT BOOK_TITLE,BOOK_PRICE FROM dbo.BOOK
WHERE BOOK_PRICE >=20 AND BOOK_PRICE >=50 
AND(BOOK_TYPE ='SUS' OR BOOK_TYPE ='MYS')

--34.	How many records were displayed in No. 33?

SELECT COUNT(BOOK_TITLE) AS TOTAL_COUNT FROM dbo.BOOK
WHERE BOOK_PRICE >=20 AND BOOK_PRICE >=50 
AND(BOOK_TYPE ='SUS' OR BOOK_TYPE ='MYS')

--35.	Count the number of records in the Written table with book codes ending in X.

SELECT COUNT(BOOK_CODE) AS TOTAL_COUNT FROM dbo.WRITTEN
WHERE BOOK_CODE LIKE '%X';