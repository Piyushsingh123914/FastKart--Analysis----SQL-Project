-- insertion scripts for Roles

DROP database

IF EXISTS fastkart;

CREATE database fastkart ;

use fastkart;

CREATE TABLE Roles
(
    RoleId TINYINT,
    RoleName VARCHAR(20)
);
CREATE TABLE Users
(
	EmailId VARCHAR(50) ,
	UserPassword VARCHAR(15),
	RoleId TINYINT,
	Gender CHAR(1),
	DateOfBirth DATE ,
Address VARCHAR(200) );
CREATE TABLE PurchaseDetails
(
    PurchaseId BIGINT ,
    EmailId VARCHAR(50),
    ProductId CHAR(4) ,
    QuantityPurchased SMALLINT,
    DateOfPurchase DATE );

CREATE TABLE CardDetails
(
    CardNumber NUMERIC(16) ,
    NameOnCard VARCHAR(40) ,
    CardType CHAR(6) ,
    CVVNumber NUMERIC(3) NOT NULL,
    ExpiryDate DATE NOT NULL ,
    Balance DECIMAL(10,2) 
);
CREATE TABLE Categories
(
    CategoryId TINYINT ,
    CategoryName VARCHAR(20)
);

CREATE TABLE Products
(
	ProductId CHAR(4) ,
	ProductName VARCHAR(50),
	CategoryId TINYINT,
	Price NUMERIC(8) NOT NULL,
	QuantityAvailable INT 
);

INSERT INTO Roles (RoleId, RoleName) VALUES (1, 'Admin');
INSERT INTO Roles (RoleId, RoleName) VALUES (2, 'Customer');

-- insertion scripts for Users
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Franken@gmail.com','BSBEV@1234',2,'F','1976-08-26','Fauntleroy Circus');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Henriot@gmail.com','CACTU@1234',2,'F','1971-09-04','Cerrito 333');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Hernadez@gmail.com','CHOPS@1234',2,'M','1981-09-18','Hauptstr. 29');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Jablonski@gmail.com','COMMI@1234',2,'M','1989-07-21','Av. dos Lusíadas, 23');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Josephs@gmail.com','CONSH@1234',2,'F','1963-11-09','Berkeley Gardens 12  Brewery');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Anzio_Don@gmail.com','don@123',1,'M','1991-02-24','Surya Bakery, Mysore;Surya Bakery, Mysore-570001');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karttunen@gmail.com','DRACD@1234',2,'M','1963-06-27','Walserweg 21');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Koskitalo@gmail.com','DUMON@1234',2,'F','1966-01-28','67, rue des Cinquante Otages');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Labrune@gmail.com','EASTC@1234',2,'F','1980-02-09','35 King George');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mathew_Edmar@gmail.com','Divine@456',2,'M','1989-09-12','Saibaba colony, Coimbatore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Larsson@gmail.com','ERNSH@1234',2,'M','1988-04-08','Kirchgasse 6');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Latimer@gmail.com','FAMIA@1234',2,'M','1964-10-08','Rua Orós, 92');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lebihan@gmail.com','FISSA@1234',2,'M','1968-03-22','C/ Moralzarzal, 86');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lincoln@gmail.com','FOLIG@1234',2,'M','1971-01-27','184, chaussée de Tournai');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('McKenna@gmail.com','FOLKO@1234',2,'F','1979-08-30','Åkergatan 24');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mendel@gmail.com','FRANK@1234',2,'M','1964-07-08','Berliner Platz 43');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Muller@gmail.com','FRANR@1234',2,'F','1965-05-22','54, rue Royale');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Nagy@gmail.com','FRANS@1234',2,'F','1978-02-05','Via Monte Bianco 34');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rourke@gmail.com','FURIB@1234',2,'F','1967-10-24','Jardim das rosas n. 32');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Ottlieb@gmail.com','GALED@1234',2,'F','1960-05-26','Rambla de Cataluña, 23');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paolino@gmail.com','GODOS@1234',2,'M','1961-08-29','C/ Romero, 33');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Parente@gmail.com','GOURL@1234',2,'F','1963-04-25','Av. Brasil, 442');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pontes@gmail.com','GROSR@1234',2,'M','1962-09-29','5ª Ave. Los Palos Grandes');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rance@gmail.com','HANAR@1234',2,'M','1986-04-30','Rua do Paço, 67');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roel@gmail.com','HILAA@1234',2,'M','1983-12-28','Carrera 22 con Ave. Carlos Soublette #8-35');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roulet@gmail.com','HUNGC@1234',2,'M','1981-04-14','City Center Plaza 516 Main St.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Saveley@gmail.com','HUNGO@1234',2,'F','1970-11-07','8 Johnstown Road');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Schmitt@gmail.com','ISLAT@1234',2,'F','1974-09-19','Garden House Crowther Way');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rine_Jamwal@gmail.com','spacejet',2,'F','1991-07-20','R S Puram, Coimbatore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Smith@gmail.com','KOENE@1234',2,'M','1985-05-08','Maubelstr. 90');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Snyder@gmail.com','LACOR@1234',2,'M','1985-11-03','67, avenue de l Europe');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sommer@gmail.com','LAMAI@1234',2,'F','1968-09-08','1 rue Alsace-Lorraine');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Thomas@gmail.com','LAUGB@1234',2,'M','1986-11-15','1900 Oak St.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Tonini@gmail.com','LAZYK@1234',2,'M','1988-11-11','12 Orchestra Terrace');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mess@gmail.com','LEHMS@1234',2,'F','1964-07-30','Magazinweg 7');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Jai@gmail.com','LETSS@1234',2,'F','1971-01-21','87 Polk St. Suite 5');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Albert@gmail.com','LILAS@1234',2,'M','1963-12-23','Carrera 52 con Ave. Bolívar #65-98 Llano Largo');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paolo@gmail.com','LINOD@1234',2,'M','1985-09-18','Ave. 5 de Mayo Porlamar');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pedro@gmail.com','LONEP@1234',2,'F','1981-03-18','89 Chiaroscuro Rd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Victoria@gmail.com','MAGAA@1234',2,'M','1987-01-09','Via Ludovico il Moro 22');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Helen@gmail.com','MAISD@1234',2,'F','1968-06-28','Rue Joseph-Bens 532');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Lesley@gmail.com','MEREP@1234',2,'F','1982-12-23','43 rue St. Laurent');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Francisco@gmail.com','MORGK@1234',2,'M','1963-02-23','Heerstr. 22');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sanio_Neeba@gmail.com','AllIsGood',2,'F','1990-06-13','Ramnagar, Coimbatore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Philip@gmail.com','NORTS@1234',2,'M','1987-03-04','South House 300 Queensbridge');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Aria@gmail.com','OCEAN@1234',2,'M','1965-06-27','Ing. Gustavo Moncada 8585 Piso 20-A');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Ann@gmail.com','OLDWO@1234',2,'F','1981-03-21','2743 Bering St.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Anabela@gmail.com','OTTIK@1234',2,'F','1985-11-23','Mehrheimerstr. 369');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Peter@gmail.com','PARIS@1234',2,'F','1981-11-13','265, boulevard Charonne');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paul@gmail.com','PERIC@1234',2,'M','1987-05-17','Calle Dr. Jorge Cash 321');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Carlos@gmail.com','PICCO@1234',2,'M','1969-02-08','Geislweg 14');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Palle@gmail.com','PRINI@1234',2,'F','1961-03-29','Estrada da saúde n. 58');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karla@gmail.com','QUEDE@1234',2,'M','1968-04-28','Rua da Panificadora, 12');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Karin@gmail.com','QUEEN@1234',2,'F','1989-12-18','Alameda dos Canàrios, 891');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Matti@gmail.com','QUICK@1234',2,'M','1982-09-18','Taucherstraße 10');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Pirkko@gmail.com','RANCH@1234',2,'M','1983-09-24','Av. del Libertador 900');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Janine@gmail.com','RATTC@1234',2,'F','1964-12-12','2817 Milton Dr.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Maria@gmail.com','REGGC@1234',2,'M','1980-04-11','Strada Provinciale 124');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Yoshi@gmail.com','RICAR@1234',2,'F','1961-08-28','Av. Copacabana, 267');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Laurence@gmail.com','RICSU@1234',2,'M','1985-05-26','Grenzacherweg 237');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('MeetRoda@yahoo.co.in','ChristaRocks',1,'M','1990-04-20','Choultry Circle, Mysore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Elizabeth@gmail.com','ROMEY@1234',2,'F','1975-04-26','Gran Vía, 1');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Patricia@gmail.com','SANTG@1234',2,'F','1968-10-16','Erling Skakkes gate 78');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Roland@gmail.com','SAVEA@1234',2,'F','1980-01-04','187 Suffolk Ln.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Rita@gmail.com','SEVES@1234',2,'M','1972-06-15','90 Wadhurst Rd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Helvetius@gmail.com','SIMOB@1234',2,'F','1978-03-09','Vinbæltet 34');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Timothy@gmail.com','SPECD@1234',2,'M','1964-09-28','25, rue Lauriston');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Sven@gmail.com','SPLIR@1234',2,'F','1967-12-12','P.O. Box 555');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('SamRocks@gmail.com','samsuji123!',2,'M','1991-06-15','Shankranti Circle, Mysore');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Miguel@gmail.com','SUPRD@1234',2,'F','1971-10-09','Boulevard Tirou, 255');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Paula@gmail.com','THEBI@1234',2,'M','1980-08-05','89 Jefferson Way Suite 2');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Manuel@gmail.com','THECR@1234',2,'M','1988-10-15','55 Grizzly Peak Rd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mariaa@gmail.com','TOMSP@1234',2,'F','1987-11-29','Luisenstr. 48');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Martine@gmail.com','TORTU@1234',2,'M','1985-05-08','Avda. Azteca 123');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Diego@gmail.com','TRADH@1234',2,'F','1983-02-16','Av. Inês de Castro, 414');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Annette@gmail.com','TRAIH@1234',2,'M','1981-05-03','722 DaVinci Blvd.');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Mary@gmail.com','VAFFE@1234',2,'F','1977-10-09','Smagsloget 45');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Carine@gmail.com','VICTE@1234',2,'F','1982-12-27','2, rue du Commerce');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Margaret@gmail.com','VINET@1234',2,'M','1979-08-16','59 rue de l Abbaye');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Howard@gmail.com','WANDK@1234',2,'F','1982-06-02','Adenauerallee 900');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Martin@gmail.com','WARTH@1234',2,'M','1989-12-15','Torikatu 38');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Gary@gmail.com','WELLI@1234',2,'F','1968-12-27','Rua do Mercado, 12');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Daniel@gmail.com','WHITC@1234',2,'M','1978-05-22','305 - 14th Ave. S. Suite 3B');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('mat@gmail.com','WILMK@1234',2,'M','1977-01-13','Keskuskatu 45');
INSERT INTO Users( EmailId,UserPassword,RoleId,Gender, DateOfBirth,Address) VALUES('Davis@gmail.com','WOLZA@1234',2,'M','1982-01-09','ul. Filtrowa 68');


-- insertion scripts for PurchaseDetails


INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1001,'Franken@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1002,'Franken@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1003,'Franken@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1004,'Franken@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1005,'Franken@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1006,'Franken@gmail.com','P134',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1007,'SamRocks@gmail.com','P120',4, '2013-11-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1008,'SamRocks@gmail.com','P110',4, '2013-11-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1009,'SamRocks@gmail.com','P112',3, '2013-11-20');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1010,'SamRocks@gmail.com','P148',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1011,'SamRocks@gmail.com','P150',5,'2013-12-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1012,'Davis@gmail.com','P134',1,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1013,'Davis@gmail.com','P101',3,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1014,'Davis@gmail.com','P143',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1015,'Davis@gmail.com','P112',3,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1016,'Davis@gmail.com','P148',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1017,'Henriot@gmail.com','P150',5,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1018,'Henriot@gmail.com','P134',1,'2013-11-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1019,'Henriot@gmail.com','P111',2,'2013-12-25');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1020,'Henriot@gmail.com','P121',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1021,'Henriot@gmail.com','P122',5,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1022,'Pirkko@gmail.com','P109',4,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1023,'Pirkko@gmail.com','P123',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1024,'Pirkko@gmail.com','P115',2,'2013-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1025,'Pirkko@gmail.com','P113',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1026,'Pirkko@gmail.com','P145',3,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1027,'Pirkko@gmail.com','P132',5,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1028,'Pirkko@gmail.com','P101',3,'2013-11-30');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1029,'Elizabeth@gmail.com','P143',5,'2014-01-01');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1030,'Elizabeth@gmail.com','P112',5,'2014-01-02');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1031,'Elizabeth@gmail.com','P148',1,'2014-01-03');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1032,'Elizabeth@gmail.com','P150',5,'2014-01-04');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1033,'Elizabeth@gmail.com','P134',2,'2014-01-05');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1034,'Elizabeth@gmail.com','P135',3,'2014-01-06');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1035,'Paula@gmail.com','P136',3,'2014-01-07');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1036,'Paula@gmail.com','P137',3,'2014-01-18');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1037,'Paula@gmail.com','P148',5,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1038,'Paula@gmail.com','P150',2,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1039,'Paula@gmail.com','P134',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1040,'Paula@gmail.com','P120',2,'2014-01-11');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1041,'Paula@gmail.com','P110',5,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1042,'Howard@gmail.com','P112',2,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1043,'Howard@gmail.com','P114',3,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1044,'Howard@gmail.com','P101',1,'2014-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1045,'Howard@gmail.com','P143',5,'2014-01-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1046,'Howard@gmail.com','P112',2,'2014-01-23');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1047,'Howard@gmail.com','P148',5,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1048,'Howard@gmail.com','P150',4,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1049,'Howard@gmail.com','P134',5,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1066,'Franken@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1067,'Franken@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1068,'Franken@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1069,'Franken@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1070,'Franken@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1071,'Franken@gmail.com','P134',3,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1072,'Pedro@gmail.com','P101',1,'2014-01-18');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1073,'Pedro@gmail.com','P143',1,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1074,'Pedro@gmail.com','P112',5,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1075,'Pedro@gmail.com','P148',1,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1076,'Pedro@gmail.com','P150',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1077,'Pedro@gmail.com','P134',4,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1078,'Pedro@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1079,'Roland@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1080,'Roland@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1081,'Roland@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1082,'Roland@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1083,'Roland@gmail.com','P134',3,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1085,'Roland@gmail.com','P101',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1086,'Roland@gmail.com','P143',1,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1087,'Roland@gmail.com','P112',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1088,'Roland@gmail.com','P148',2,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1089,'Roland@gmail.com','P150',1,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1090,'Roland@gmail.com','P134',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1108,'Timothy@gmail.com','P120',4,'2013-11-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1110,'Timothy@gmail.com','P110',4,'2013-11-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1111,'Timothy@gmail.com','P112',3,'2013-11-20');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1112,'Timothy@gmail.com','P148',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1114,'Timothy@gmail.com','P150',5,'2013-12-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1115,'Timothy@gmail.com','P134',1,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1116,'Timothy@gmail.com','P101',3,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1117,'Timothy@gmail.com','P143',3,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1118,'Timothy@gmail.com','P112',3,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1119,'Timothy@gmail.com','P148',3,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1120,'Timothy@gmail.com','P150',5,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1121,'Timothy@gmail.com','P134',1,'2013-11-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1122,'Matti@gmail.com','P111',2,'2013-12-25');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1123,'Matti@gmail.com','P121',1,'2013-11-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1124,'Matti@gmail.com','P122',5,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1125,'Matti@gmail.com','P109',4,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1126,'Matti@gmail.com','P123',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1127,'Matti@gmail.com','P115',2,'2013-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1128,'Matti@gmail.com','P113',5,'2013-12-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1129,'Matti@gmail.com','P145',3,'2013-11-28');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1130,'Matti@gmail.com','P132',5,'2013-11-29');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1131,'Matti@gmail.com','P101',3,'2013-11-30');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1132,'Matti@gmail.com','P143',5,'2014-01-01');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1133,'Matti@gmail.com','P112',5,'2014-01-02');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1134,'Helvetius@gmail.com','P148',1,'2014-01-03');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1135,'Helvetius@gmail.com','P150',5,'2014-01-04');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1136,'Helvetius@gmail.com','P134',2,'2014-01-05');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1137,'Helvetius@gmail.com','P135',3,'2014-01-06');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1138,'Helvetius@gmail.com','P136',3,'2014-01-07');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1139,'Helvetius@gmail.com','P137',3,'2014-01-18');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1140,'Helvetius@gmail.com','P148',5,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1141,'Helvetius@gmail.com','P150',2,'2014-01-16');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1142,'Helvetius@gmail.com','P134',2,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1143,'Helvetius@gmail.com','P120',2,'2014-01-11');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1144,'Helvetius@gmail.com','P110',5,'2014-01-12');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1145,'Helvetius@gmail.com','P112',2,'2014-01-17');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1146,'Mathew_Edmar@gmail.com','P114',3,'2014-01-19');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1147,'Mathew_Edmar@gmail.com','P101',1,'2014-01-21');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1148,'Mathew_Edmar@igmail.com','P143',5,'2014-01-22');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1149,'Mathew_Edmar@gmail.com','P112',2,'2014-01-13');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1150,'Mathew_Edmar@gmail.com','P148',5,'2014-01-14');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1151,'Mathew_Edmar@gmail.com','P150',4,'2014-01-15');
INSERT INTO PurchaseDetails(PurchaseId,EmailId,ProductId,QuantityPurchased,DateOfPurchase) VALUES(1152,'Mathew_Edmar@gmail.com','P134',5,'2014-01-17');

-- insertion script for Categories
INSERT INTO Categories (CategoryId, CategoryName) VALUES (1, 'Motors');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (2, 'Fashion');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (3, 'Electronics');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (4, 'Arts');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (5, 'Home');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (6, 'Sporting Goods');
INSERT INTO Categories (CategoryId, CategoryName) VALUES (7, 'Toys');

-- insertion script for Products
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P101','Lamborghini Gallardo Spyder',1,18000000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P102','BMW X1',1,3390000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P103','BMW Z4',1,6890000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P104','Harley Davidson Iron 883 ',1,700000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P105','Ducati Multistrada',1,2256000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P106','Honda CBR 250R',1,193000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P107','Kenneth Cole Black & White Leather Reversible Belt',2,2500.00,50);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P108','Classic Brooks Brothers 346 Wool Black Sport Coat',2,3078.63,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P109','Ben Sherman Mens Necktie Silk Tie',2,1847.18,20);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P110','BRIONI Shirt Cotton NWT Medium',2,2050.00,25);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P111','Patagonia NWT mens XL Nine Trails Vest',2,2299.99,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P112','Blue Aster Blue Ivory Rugby Pack Shoes',2,6772.37,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P113','Ann Taylor 100% Cashmere Turtleneck Sweater',2,3045.44,80);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P114','Fashion New Slim Ladies Womens Suit Coat',2,2159.59,65);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P115','Apple IPhone 5s 16GB',3,52750.00,70);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P116','Samsung Galaxy S4',3,38799.99,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P117','Nokia Lumia 1320',3,42199.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P118','LG Nexus 5',3,32649.54,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P119','Moto DroidX',3,32156.45,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P120','Apple MAcbook Pro',3,56800.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P121','Dell Inspiron',3,36789.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P122','IPad Air',3,28000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P123','Xbox 360 with kinect',3,25000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P124','Abstract Hand painted Oil Painting on Canvas',4,2056.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P125','Mysore Painting of Lord Shiva',4,5000.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P126','Tanjore Painting of Ganesha',4,8000.00,20);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P127','Marble Elephants statue',4,9056.00,50);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P128','Wooden photo frame',4,150.00,200);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P129','Gold plated dancing peacock',4,350.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P130','Kundan jewellery set',4,2000.00,30);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P131','Marble chess board','4','3000.00','20');
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P132','German Folk Art Wood Carvings Shy Boy and Girl',4,6122.20,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P133','Modern Abstract Metal Art Wall Sculpture',5,5494.55,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P134','Bean Bag Chair Love Seat',5,5754.55,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P135','Scented rose candles',5,200.00,50);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P136','Digital bell chime',5,800.00,10);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P137','Curtains',5,600.00,20);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P138','Wall stickers',5,200.00,30);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P139','Shades of Blue Line-by-Line Quilt',5,691.24,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P140','Tahoe Gear Prescott 10 Person Family Cabin Tent',6,9844.33,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P141','Turner Sultan 29er Large',6,147612.60,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P142','BAMBOO BACKED HICKORY LONGBOW ',6,5291.66,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P143','Adidas Shoes',6,700.00,150);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P144','Tennis racket',6,200.00,150);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P145','Baseball glove',6,150.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P146','Door gym',6,700.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P147','Cricket bowling machine',6,3000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P148','ROLLER DERBY SKATES',6,3079.99,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P149','Metal 3.5-Channel RC Helicopter',7,2458.20,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P150','Ned Butterfly Style Yo Yo',7,553.23,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P151','Baby Einstein Hand Puppets',7,1229.41,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P152','fire godzilla toy',7,614.09,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P153','Remote car',7,1000.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P154','Barbie doll set',7,500.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P155','Teddy bear',7,300.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P156','Clever sticks',7,400.00,100);
INSERT INTO Products(ProductId,ProductName,CategoryId,Price,QuantityAvailable) VALUES('P157','See and Say',7,200.00,50);



-- insertion scripts for CardDetails 

INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1201611246771470,'Cruz','V',171,'2026-12-25',13645.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1224120265211560,'Pirkko','M',771,'2027-01-11',14620.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1221664512112100,'Helen','M',402,'2021-06-21',16132.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1245674110616670,'Mary','M',121,'2011-01-04',14071.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1251175712010020,'Annette','M',606,'2022-10-24',15111.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1211352607461300,'Saveley','V  ',161,'2023-01-05',14120.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1307313341777150,'Anne','M',614,'2011-01-21',16611.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1307114461363110,'Philip','M',663,'2021-01-11',1663.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1323151003776600,'Parente','V  ',517,'2021-07-22',7532.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1333123521012050,'Laurence','M',401,'2021-01-01',16257.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1344543014137310,'Chang','V  ',602,'2023-10-16',10122.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1353631465427120,'Paolino','V  ',435,'2022-01-14',5400.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1360271142701510,'Karin','M',171,'2024-03-07',12112.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1372132010111220,'Sommer','V  ',524,'2021-04-12',14556.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1375307422567340,'Yoshi','M',461,'2021-10-10',12344.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1316564526403300,'Carlos','M',461,'2025-01-25',6110.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1401111131746240,'Ibsen','V  ',246,'2022-01-01',7022.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1420510667654400,'Bennett','V  ',324,'2021-02-17',5724.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1422216513351170,'Aria','M',565,'2030-04-11',16016.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1421133147340150,'Martin','M',421,'2022-03-26',1567.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1431111041313360,'Matti Karttunen','M',151,'2026-05-14',6334.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1431111177663050,'Roel','V  ',641,'2024-01-15',13577.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1462257641213010,'Larsson','V  ',741,'2027-04-02',14613.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1412320153151460,'Peter','M',522,'2021-12-01',1433.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1412317474220120,'Maria','M',340,'2011-11-11',13011.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1514516710011230,'Pedro','V  ',120,'2021-01-04',6451.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1537716141367160,'Pontes','V  ',310,'2021-05-23',1675.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1555631662463540,'Henriot','V  ',771,'2020-01-20',1716.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1563101313111020,'Jaime Yorres','V  ',240,'2011-10-22',11605.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1572423633450130,'Matti','M',775,'2021-02-02',5172.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1574371302243230,'Hernadez','V  ',551,'2022-11-07',3111.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1510111101132260,'Muller','V  ',645,'2021-03-01',10031.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1511603111737110,'Lincoln','V  ',316,'2022-10-04',11147.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1511621514155670,'Karla','M',632,'2030-07-17',13212.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1601547117331400,'Rourke','V  ',414,'2026-11-10',1013.0);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1625571520110510,'Mendel','V  ',661,'2011-06-16',1736.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1644101715340540,'Lebihan','V  ',103,'2020-11-11',11121.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1656151554325110,'Paolo','V  ',410,'2027-11-26',11165.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1666406702115340,'Lesley','M',275,'2025-01-27',6134.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1670172362066270,'Ottlieb','V  ',664,'2027-10-30',3257.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1706701611601450,'Martine','M',461,'2020-12-16',6611.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1753456075104120,'Cramer','V  ',156,'2021-12-22',17721.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1762111141311160,'Victoria','V  ',146,'2027-01-20',5127.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1761660540375220,'Smith','V  ',603,'2027-10-05',3011.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1770711472411120,'Accorti','V  ',155,'2025-01-16',17423.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1770126010361760,'Koskitalo','V  ',174,'2021-01-11',15112.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1774070025107600,'Miguel','M',444,'2020-06-11',10051.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1710717311715350,'Helvetius','M',161,'2027-05-03',12015.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1717045046216010,'Domingues','V  ',335,'2021-11-03',6613.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1103711311451210,'Diego','M',744,'2026-01-14',15762.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1125514516343200,'Nagy','V  ',705,'2023-04-11',7712.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1161441663431710,'Snyder','V  ',310,'2023-04-06',15011.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1116061342213410,'Thomas','V  ',133,'2021-04-16',11755.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1105311731514100,'Sven','M',657,'2020-11-11',5751.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1130722551101600,'Pereira','V  ',556,'2026-04-12',5116.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1131172100701320,'Tonini','V  ',513,'2021-04-23',3565.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1174246112311160,'Anabela','M',204,'2023-12-03',13013.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1117163271307720,'Howard','M',331,'2026-02-10',2701.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(1116173177447140,'Davis','M',501,'2023-03-21',11212.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2017070736071510,'Franken','V  ',431,'2023-06-05',11000000.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2020707634310170,'Karttunen','V  ',165,'2027-10-20',17121.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2031135301155300,'Janine','M',610,'2024-11-01',4077.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2040107464727150,'Paula','M',216,'2021-07-01',1052.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2054415375031050,'Elizabeth','M',113,'2024-01-12',6145.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2071616512053250,'Maria','M',465,'2025-07-11',6170.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2012327655031300,'Jablonski','V  ',622,'2020-02-21',14210.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2011162707660160,'Timothy','M',561,'2023-01-01',1401.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2011211617152320,'Carlos González','V  ',244,'2026-01-07',7330.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2102101115051560,'Ashworth','V  ',634,'2027-05-24',10204.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2102410151544330,'Roulet','V  ',764,'2026-01-20',2113.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2107011101224360,'Latimer','V  ',720,'2021-01-16',11317.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2112361521723620,'Carine','M',410,'2022-12-06',11773.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2111125701641510,'Schmitt','V  ',331,'2030-05-01',6112.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2121715155211770,'Palle','M',261,'2027-07-05',3655.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2122410035510610,'Margaret','M',175,'2022-01-16',11000.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2127103726103060,'Afonso','V  ',151,'2021-10-01',11726.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2136141552371010,'Rance','V  ',434,'2025-10-05',17113.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2131511656416670,'Francisco','M',727,'2021-01-30',15145.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2155131100617450,'Labrune','V  ',400,'2021-02-10',2455.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2157326161005110,'Daniel','M',127,'2021-03-07',2145.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2175132167133100,'Gary','M',635,'2021-05-31',14526.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2175174316401110,'Devon','V  ',270,'2021-11-20',3463.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2201617402112410,'Josephs','V  ',640,'2023-12-21',15714.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2210444662115510,'Paul','M',710,'2025-04-21',16523.00);
INSERT INTO CardDetails(CardNumber,NameOnCard,CardType,CVVNumber,ExpiryDate,Balance) VALUES(2211617013131110,'Roland','M',711,'2025-01-31',2537.00);




/* ==========================================================================
   ANALYSIS LAYER  (appended to the original fastkart script)
   Target engine : MySQL 8.0+  (window functions / CTEs are used)
   How to run    : run the WHOLE file in ONE session (session variables below
                   are reused by many queries).
   --------------------------------------------------------------------------
   KEY DATA FACTS (found while analysing the data)
   * Purchases span 2013-01-21 .. 2014-01-23, so "last N months" is measured
     back from the LATEST PURCHASE DATE (@ref_date) - using CURDATE() would
     return empty results for every time-window question.
   * PurchaseDetails has no card column and no order/basket id.
       - Card <-> user link  : CardDetails.NameOnCard = text before '@' in
                               Users.EmailId  (this is how the data is built).
       - "Same purchase/basket": same EmailId + same DateOfPurchase.
   * No registration date, price history, cost/margin, discount, rating,
     return, stock-history or launch-date columns exist. Those questions are
     answered with the closest honest proxy, clearly labelled, or with a query
     proving the data is absent.
   * Data-quality items spotted: CardType has padded values ('V  ' vs 'V'),
     one purchase uses an e-mail that is not in Users
     ('Mathew_Edmar@igmail.com', typo of ...@gmail.com), and two users
     (Maria / Mariaa) collide on the card name 'Maria'.
   ========================================================================== */

USE fastkart;

SET @ref_date = (SELECT MAX(DateOfPurchase) FROM PurchaseDetails);   -- "as of" date of the data
SET @min_date = (SELECT MIN(DateOfPurchase) FROM PurchaseDetails);   -- start of the data
SET @today    = CURDATE();                                           -- real calendar date (used for card expiry / age)

-- ---------- helper views ---------------------------------------------------
CREATE OR REPLACE VIEW vw_Purchases AS
SELECT pd.PurchaseId, pd.EmailId, pd.ProductId, p.ProductName, p.CategoryId, c.CategoryName,
       pd.QuantityPurchased, p.Price, pd.QuantityPurchased * p.Price AS PurchaseValue,
       pd.DateOfPurchase, DATE_FORMAT(pd.DateOfPurchase, '%Y-%m') AS YearMonthKey
FROM PurchaseDetails pd
JOIN Products   p ON p.ProductId  = pd.ProductId
JOIN Categories c ON c.CategoryId = p.CategoryId;

CREATE OR REPLACE VIEW vw_UserCards AS            -- cards owned by each user (name match)
SELECT u.EmailId, cd.CardNumber, cd.NameOnCard, TRIM(cd.CardType) AS CardType,
       cd.ExpiryDate, cd.Balance
FROM Users u
JOIN CardDetails cd ON cd.NameOnCard = SUBSTRING_INDEX(u.EmailId, '@', 1);

CREATE OR REPLACE VIEW vw_UserSpend AS            -- one row per purchasing user
SELECT EmailId,
       COUNT(*)                       AS Purchases,
       SUM(QuantityPurchased)         AS Units,
       SUM(PurchaseValue)             AS TotalSpend,
       AVG(PurchaseValue)             AS AvgPurchaseValue,
       MIN(DateOfPurchase)            AS FirstPurchase,
       MAX(DateOfPurchase)            AS LastPurchase,
       COUNT(DISTINCT CategoryId)     AS Categories,
       COUNT(DISTINCT ProductId)      AS DistinctProducts,
       COUNT(DISTINCT DateOfPurchase) AS PurchaseDays
FROM vw_Purchases
GROUP BY EmailId;

CREATE OR REPLACE VIEW vw_Baskets AS              -- a "basket" = user + day
SELECT EmailId, DateOfPurchase, ProductId
FROM PurchaseDetails
GROUP BY EmailId, DateOfPurchase, ProductId;

CREATE OR REPLACE VIEW vw_ProductPairs AS         -- product pairs inside one basket
SELECT a.ProductId AS ProductA, b.ProductId AS ProductB, a.EmailId, a.DateOfPurchase
FROM vw_Baskets a
JOIN vw_Baskets b ON a.EmailId = b.EmailId
                 AND a.DateOfPurchase = b.DateOfPurchase
                 AND a.ProductId < b.ProductId;

-- helper: city / locality = text after the last comma, otherwise the full address
CREATE OR REPLACE VIEW vw_UserLocality AS
SELECT EmailId, Gender, RoleId, DateOfBirth, Address,
       TRIM(SUBSTRING_INDEX(SUBSTRING_INDEX(Address, ';', 1), ',', -1)) AS Locality
FROM Users;

-- helper: age as of today
CREATE OR REPLACE VIEW vw_UserAge AS
SELECT EmailId, Gender, RoleId,
       TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE()) AS Age,
       FLOOR(TIMESTAMPDIFF(YEAR, DateOfBirth, CURDATE()) / 10) * 10 AS AgeGroup
FROM Users;

-- helper: proof that optional data columns do not exist in the schema
CREATE OR REPLACE VIEW vw_MissingDataCheck AS
SELECT COUNT(*) AS MatchingColumns
FROM information_schema.columns
WHERE table_schema = 'fastkart'
  AND (column_name REGEXP 'discount|rating|return|complaint|cost|margin|launch|registration|created|issued');


/* ##########################################################################
   PART A  -  "Questions_default.pdf" LIST 1  (A1 - A100)
   ########################################################################## */

-- ===================== USER BEHAVIOUR & SEGMENTATION ======================

-- A1. Which users have made the highest number of purchases?
SELECT EmailId, COUNT(*) AS NumberOfPurchases
FROM PurchaseDetails
GROUP BY EmailId
ORDER BY NumberOfPurchases DESC, EmailId;

-- A2. Average purchase value for each user
SELECT EmailId, ROUND(AVG(PurchaseValue), 2) AS AveragePurchaseValue
FROM vw_Purchases
GROUP BY EmailId
ORDER BY AveragePurchaseValue DESC;

-- A3. Dormant users (no purchase in the 12 months up to the last recorded purchase date)
--     Users who never purchased are dormant too (NOT EXISTS avoids NOT IN / NULL traps).
SELECT u.EmailId, MAX(pd.DateOfPurchase) AS LastPurchase
FROM Users u
LEFT JOIN PurchaseDetails pd ON pd.EmailId = u.EmailId
GROUP BY u.EmailId
HAVING MAX(pd.DateOfPurchase) IS NULL
    OR MAX(pd.DateOfPurchase) < DATE_SUB(@ref_date, INTERVAL 12 MONTH);

-- A4. Percentage of users who are repeat buyers (of purchasers, and of ALL registered users)
SELECT SUM(Purchases > 1)                                         AS RepeatBuyers,
       COUNT(*)                                                   AS Purchasers,
       (SELECT COUNT(*) FROM Users)                               AS AllUsers,
       ROUND(100 * SUM(Purchases > 1) / COUNT(*), 2)              AS PctOfPurchasers,
       ROUND(100 * SUM(Purchases > 1) / (SELECT COUNT(*) FROM Users), 2) AS PctOfAllUsers
FROM vw_UserSpend;

-- A5. Users who purchased from only one category
SELECT EmailId, MAX(CategoryName) AS OnlyCategory
FROM vw_Purchases
GROUP BY EmailId
HAVING COUNT(DISTINCT CategoryId) = 1;

-- A6. Users who purchased from every category
SELECT EmailId
FROM vw_Purchases
GROUP BY EmailId
HAVING COUNT(DISTINCT CategoryId) = (SELECT COUNT(*) FROM Categories);

-- A7. Unique users purchasing in each month
SELECT YearMonthKey AS YearMonth, COUNT(DISTINCT EmailId) AS UniqueUsers
FROM vw_Purchases
GROUP BY YearMonthKey
ORDER BY YearMonth;

-- A8. Top 10 customers by total spend
SELECT EmailId, TotalSpend
FROM vw_UserSpend
ORDER BY TotalSpend DESC
LIMIT 10;

-- A9. Average interval (days) between purchases per user
SELECT EmailId, ROUND(AVG(DATEDIFF(NextPurchase, DateOfPurchase)), 2) AS AvgDaysBetweenPurchases
FROM (
    SELECT EmailId, DateOfPurchase,
           LEAD(DateOfPurchase) OVER (PARTITION BY EmailId ORDER BY DateOfPurchase, PurchaseId) AS NextPurchase
    FROM PurchaseDetails
) t
WHERE NextPurchase IS NOT NULL
GROUP BY EmailId
ORDER BY AvgDaysBetweenPurchases;

-- A10. Users with the highest number of purchases in a single month (ties kept)
WITH m AS (
    SELECT EmailId, YearMonthKey, COUNT(*) AS PurchaseCount
    FROM vw_Purchases
    GROUP BY EmailId, YearMonthKey
)
SELECT EmailId, YearMonthKey AS YearMonth, PurchaseCount
FROM m
WHERE PurchaseCount = (SELECT MAX(PurchaseCount) FROM m)
ORDER BY EmailId;

-- A11. Users registered each year.
--      No registration date exists -> proxy = year of the user's FIRST PURCHASE
--      (purchasers only) and, for completeness, users per birth year.
SELECT YEAR(FirstPurchase) AS FirstPurchaseYear, COUNT(*) AS Users
FROM vw_UserSpend GROUP BY YEAR(FirstPurchase) ORDER BY 1;

SELECT YEAR(DateOfBirth) AS BirthYear, COUNT(*) AS Users
FROM Users GROUP BY YEAR(DateOfBirth) ORDER BY 1;

-- A12. Gender skew: active purchasers vs all users
SELECT 'All Users' AS UserType, Gender, COUNT(*) AS Cnt,
       ROUND(100 * COUNT(*) / (SELECT COUNT(*) FROM Users), 2) AS Pct
FROM Users GROUP BY Gender
UNION ALL
SELECT 'Active Purchasers', u.Gender, COUNT(DISTINCT u.EmailId),
       ROUND(100 * COUNT(DISTINCT u.EmailId) / (SELECT COUNT(DISTINCT EmailId) FROM PurchaseDetails WHERE EmailId IN (SELECT EmailId FROM Users)), 2)
FROM Users u JOIN PurchaseDetails pd ON pd.EmailId = u.EmailId
GROUP BY u.Gender;

-- A13. Users with the highest diversity of products purchased
SELECT EmailId, DistinctProducts AS ProductDiversity
FROM vw_UserSpend
ORDER BY ProductDiversity DESC, EmailId
LIMIT 10;

-- A14. Highest-value single purchase (ties kept)
SELECT PurchaseId, EmailId, ProductId, ProductName, QuantityPurchased, PurchaseValue
FROM vw_Purchases
WHERE PurchaseValue = (SELECT MAX(PurchaseValue) FROM vw_Purchases);

-- A15. Users sharing the same address (case/space-insensitive)
SELECT LOWER(TRIM(Address)) AS Address, COUNT(*) AS UserCount, GROUP_CONCAT(EmailId) AS Users
FROM Users
GROUP BY LOWER(TRIM(Address))
HAVING COUNT(*) > 1;

-- A16. Users who purchased over multiple calendar years
SELECT EmailId, COUNT(DISTINCT YEAR(DateOfPurchase)) AS YearsPurchased
FROM PurchaseDetails
GROUP BY EmailId
HAVING YearsPurchased > 1;

-- A17. Users who never used the same card for two purchases.
--      Purchases carry no card id. Best possible evidence: a user can only
--      avoid re-using a card if they own >= 2 cards; users with exactly 1 card
--      (or none) necessarily re-used it. Candidates = purchasers (>=2 purchases) holding >= 2 cards.
SELECT s.EmailId, s.Purchases, COUNT(c.CardNumber) AS CardsOnFile
FROM vw_UserSpend s
LEFT JOIN vw_UserCards c ON c.EmailId = s.EmailId
WHERE s.Purchases >= 2
GROUP BY s.EmailId, s.Purchases
HAVING COUNT(c.CardNumber) >= 2;          -- (empty in current data: nobody qualifies)

-- A18. Users who purchased EXCLUSIVELY top-10%-price products
WITH pb AS (
    SELECT ProductId, NTILE(10) OVER (ORDER BY Price DESC) AS PriceDecile FROM Products
)
SELECT pd.EmailId
FROM PurchaseDetails pd
JOIN pb ON pb.ProductId = pd.ProductId
GROUP BY pd.EmailId
HAVING MAX(pb.PriceDecile) = 1;

-- A19. Users who have used (own) more than one card
SELECT EmailId, COUNT(*) AS Cards
FROM vw_UserCards
GROUP BY EmailId
HAVING COUNT(*) > 1;

-- A20. Users with more than X purchases in the last Y months  (edit the 2 variables)
SET @X = 5, @Y = 6;
SELECT EmailId, COUNT(*) AS PurchaseCount
FROM PurchaseDetails
WHERE DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL @Y MONTH)
  AND DateOfPurchase <= @ref_date
GROUP BY EmailId
HAVING COUNT(*) > @X
ORDER BY PurchaseCount DESC;

-- ===================== PRODUCT SALES & PROFITABILITY ======================

-- A21. Products generating the most revenue
SELECT ProductId, ProductName, SUM(PurchaseValue) AS TotalRevenue
FROM vw_Purchases
GROUP BY ProductId, ProductName
ORDER BY TotalRevenue DESC;

-- A22. Best-selling product (units) in each category (ties kept)
WITH s AS (
    SELECT CategoryId, CategoryName, ProductId, ProductName, SUM(QuantityPurchased) AS UnitsSold,
           RANK() OVER (PARTITION BY CategoryId ORDER BY SUM(QuantityPurchased) DESC) AS rk
    FROM vw_Purchases
    GROUP BY CategoryId, CategoryName, ProductId, ProductName
)
SELECT CategoryId, CategoryName, ProductId, ProductName, UnitsSold
FROM s WHERE rk = 1 ORDER BY CategoryId;

-- A23. Products with zero sales
SELECT p.ProductId, p.ProductName, p.CategoryId, p.Price, p.QuantityAvailable
FROM Products p
WHERE NOT EXISTS (SELECT 1 FROM PurchaseDetails pd WHERE pd.ProductId = p.ProductId);

-- A24. Products with declining monthly sales for >= 3 consecutive calendar months
WITH ms AS (
    SELECT ProductId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0 AS ym, SUM(QuantityPurchased) AS Qty
    FROM PurchaseDetails GROUP BY ProductId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0
),
lg AS (
    SELECT ProductId, ym, Qty,
           LAG(Qty, 1) OVER w AS q1, LAG(ym, 1) OVER w AS ym1,
           LAG(Qty, 2) OVER w AS q2, LAG(ym, 2) OVER w AS ym2
    FROM ms WINDOW w AS (PARTITION BY ProductId ORDER BY ym)
)
SELECT DISTINCT ProductId
FROM lg
WHERE Qty < q1 AND q1 < q2
  AND PERIOD_DIFF(ym, ym1) = 1 AND PERIOD_DIFF(ym1, ym2) = 1;     -- empty = no product shows this pattern

-- A25. Product with maximum units sold overall (ties kept)
WITH t AS (
    SELECT ProductId, ProductName, SUM(QuantityPurchased) AS TotalQuantity FROM vw_Purchases GROUP BY ProductId, ProductName
)
SELECT * FROM t WHERE TotalQuantity = (SELECT MAX(TotalQuantity) FROM t);

-- A26. Product with the most unique purchasers (ties kept)
WITH t AS (
    SELECT ProductId, ProductName, COUNT(DISTINCT EmailId) AS UniquePurchasers FROM vw_Purchases GROUP BY ProductId, ProductName
)
SELECT * FROM t WHERE UniquePurchasers = (SELECT MAX(UniquePurchasers) FROM t);

-- A27. Top 5 products by margin.  No cost column -> ESTIMATE with an assumed margin % (edit @margin_pct).
SET @margin_pct = 20;
SELECT p.ProductId, p.ProductName, p.Price,
       ROUND(p.Price * @margin_pct / 100, 2)                         AS EstMarginPerUnit,
       COALESCE(SUM(pd.QuantityPurchased), 0)                        AS UnitsSold,
       ROUND(p.Price * @margin_pct / 100 * COALESCE(SUM(pd.QuantityPurchased), 0), 2) AS EstTotalMargin
FROM Products p
LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.Price
ORDER BY EstTotalMargin DESC, EstMarginPerUnit DESC
LIMIT 5;

-- A28. Products bought by the most diverse customer base (buyers, genders, age groups, localities)
SELECT v.ProductId, v.ProductName,
       COUNT(DISTINCT v.EmailId)  AS UniquePurchasers,
       COUNT(DISTINCT a.Gender)   AS Genders,
       COUNT(DISTINCT a.AgeGroup) AS AgeGroups,
       COUNT(DISTINCT l.Locality) AS Localities
FROM vw_Purchases v
JOIN vw_UserAge a      ON a.EmailId = v.EmailId
JOIN vw_UserLocality l ON l.EmailId = v.EmailId
GROUP BY v.ProductId, v.ProductName
ORDER BY UniquePurchasers DESC, AgeGroups DESC, Localities DESC;

-- A29. Products ALWAYS bought together (same user + same day basket).
--      A pair qualifies when every purchase of A is with B and vice-versa.
WITH cnt AS (SELECT ProductId, COUNT(*) AS Baskets FROM vw_Baskets GROUP BY ProductId),
     pr  AS (SELECT ProductA, ProductB, COUNT(*) AS TogetherBaskets FROM vw_ProductPairs GROUP BY ProductA, ProductB)
SELECT pr.ProductA, pr.ProductB, pr.TogetherBaskets, ca.Baskets AS BasketsA, cb.Baskets AS BasketsB
FROM pr
JOIN cnt ca ON ca.ProductId = pr.ProductA
JOIN cnt cb ON cb.ProductId = pr.ProductB
WHERE pr.TogetherBaskets = ca.Baskets AND pr.TogetherBaskets = cb.Baskets
ORDER BY pr.TogetherBaskets DESC;

-- A30. Products with high seasonality: coefficient of variation of units across the 12 calendar months (zero-filled)
WITH RECURSIVE mths(m) AS (SELECT 1 UNION ALL SELECT m + 1 FROM mths WHERE m < 12),
prod AS (SELECT DISTINCT ProductId FROM PurchaseDetails),
q AS (
    SELECT p.ProductId, m.m, COALESCE(SUM(pd.QuantityPurchased), 0) AS Qty
    FROM prod p CROSS JOIN mths m
    LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId AND MONTH(pd.DateOfPurchase) = m.m
    GROUP BY p.ProductId, m.m
)
SELECT q.ProductId, pr.ProductName, SUM(Qty) AS TotalUnits,
       ROUND(STDDEV_POP(Qty) / AVG(Qty), 3) AS SeasonalityCV
FROM q JOIN Products pr ON pr.ProductId = q.ProductId
GROUP BY q.ProductId, pr.ProductName
HAVING SUM(Qty) >= 3
ORDER BY SeasonalityCV DESC, TotalUnits DESC
LIMIT 10;

-- A31. Products sold ONLY to new users (new = first purchase within the last 90 days of data)
SET @new_user_days = 90;
WITH nu AS (
    SELECT EmailId FROM PurchaseDetails GROUP BY EmailId
    HAVING MIN(DateOfPurchase) > DATE_SUB(@ref_date, INTERVAL @new_user_days DAY)
)
SELECT p.ProductId, p.ProductName
FROM Products p
WHERE EXISTS (SELECT 1 FROM PurchaseDetails d WHERE d.ProductId = p.ProductId)
  AND NOT EXISTS (SELECT 1 FROM PurchaseDetails d WHERE d.ProductId = p.ProductId AND d.EmailId NOT IN (SELECT EmailId FROM nu));

-- A32. Average purchase quantity by product
SELECT ProductId, ProductName, ROUND(AVG(QuantityPurchased), 2) AS AvgQuantity, COUNT(*) AS PurchaseLines
FROM vw_Purchases
GROUP BY ProductId, ProductName
ORDER BY AvgQuantity DESC;

-- A33. Products that have stocked out (QuantityAvailable = 0) + products whose sold units already exceed remaining stock
SELECT p.ProductId, p.ProductName, p.QuantityAvailable,
       COALESCE(SUM(pd.QuantityPurchased), 0) AS UnitsSold,
       CASE WHEN p.QuantityAvailable = 0 THEN 'OUT OF STOCK'
            WHEN COALESCE(SUM(pd.QuantityPurchased), 0) >= p.QuantityAvailable THEN 'SOLD >= STOCK LEFT'
            ELSE 'OK' END AS StockStatus
FROM Products p
LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.QuantityAvailable
HAVING StockStatus <> 'OK'
ORDER BY p.QuantityAvailable, UnitsSold DESC;

-- A34. Products whose price has not changed in the last year.
--      No price-history table exists: every product has exactly ONE recorded price, so all are
--      "unchanged" by construction. Listing them with the evidence:
SELECT ProductId, ProductName, Price, 'single price snapshot - no history tracked' AS Evidence
FROM Products ORDER BY ProductId;
/* To track history going forward:
   CREATE TABLE ProductPriceHistory (ProductId CHAR(4), Price NUMERIC(8), EffectiveFrom DATE);  */

-- ===================== CATEGORY & TREND ANALYSIS ==========================

-- A35. Fastest growing categories month-over-month (avg absolute and avg % change, consecutive months only)
WITH m AS (
    SELECT CategoryId, CategoryName, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0 AS ym, SUM(QuantityPurchased) AS Qty
    FROM vw_Purchases GROUP BY CategoryId, CategoryName, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0
),
g AS (
    SELECT CategoryId, CategoryName, ym, Qty,
           LAG(Qty) OVER (PARTITION BY CategoryId ORDER BY ym) AS PrevQty,
           LAG(ym)  OVER (PARTITION BY CategoryId ORDER BY ym) AS PrevYm
    FROM m
)
SELECT CategoryId, CategoryName,
       ROUND(AVG(Qty - PrevQty), 2)                         AS AvgMonthlyUnitGrowth,
       ROUND(AVG(100 * (Qty - PrevQty) / PrevQty), 2)       AS AvgMonthlyPctGrowth,
       COUNT(*)                                             AS MonthPairs
FROM g
WHERE PrevQty IS NOT NULL AND PERIOD_DIFF(ym, PrevYm) = 1
GROUP BY CategoryId, CategoryName
ORDER BY AvgMonthlyPctGrowth DESC;

-- A36. Category with consistently low sales (lowest units, lowest revenue, fewest active months)
SELECT c.CategoryId, c.CategoryName,
       COALESCE(SUM(v.QuantityPurchased), 0)       AS TotalUnits,
       COALESCE(SUM(v.PurchaseValue), 0)           AS TotalRevenue,
       COUNT(DISTINCT v.YearMonthKey)              AS ActiveMonths,
       RANK() OVER (ORDER BY COALESCE(SUM(v.QuantityPurchased), 0)) AS UnitsRankLowestFirst
FROM Categories c
LEFT JOIN vw_Purchases v ON v.CategoryId = c.CategoryId
GROUP BY c.CategoryId, c.CategoryName
ORDER BY TotalUnits, ActiveMonths;

-- A37. Revenue share of each category
SELECT CategoryName, SUM(PurchaseValue) AS CategoryRevenue,
       ROUND(100 * SUM(PurchaseValue) / SUM(SUM(PurchaseValue)) OVER (), 2) AS RevenuePct
FROM vw_Purchases
GROUP BY CategoryName
ORDER BY CategoryRevenue DESC;

-- A38. Categories with the most diverse set of products purchased
SELECT c.CategoryId, c.CategoryName,
       COUNT(DISTINCT v.ProductId)                                     AS ProductsPurchased,
       (SELECT COUNT(*) FROM Products p WHERE p.CategoryId = c.CategoryId) AS ProductsInCatalog,
       ROUND(100 * COUNT(DISTINCT v.ProductId) / (SELECT COUNT(*) FROM Products p WHERE p.CategoryId = c.CategoryId), 1) AS PctCatalogSold
FROM Categories c LEFT JOIN vw_Purchases v ON v.CategoryId = c.CategoryId
GROUP BY c.CategoryId, c.CategoryName
ORDER BY ProductsPurchased DESC;

-- A39. Categories with the shortest time to first sale.
--      No launch date -> proxy = days from the start of the data (@min_date) to the category's first sale.
SELECT CategoryName, MIN(DateOfPurchase) AS FirstSale, DATEDIFF(MIN(DateOfPurchase), @min_date) AS DaysToFirstSale
FROM vw_Purchases
GROUP BY CategoryName
ORDER BY DaysToFirstSale;

-- A40. Categories with highest average purchase value
SELECT CategoryName, ROUND(AVG(PurchaseValue), 2) AS AvgPurchaseValue
FROM vw_Purchases GROUP BY CategoryName ORDER BY AvgPurchaseValue DESC;

-- A41. Purchase volume trend by category, last 2 years of data
SELECT CategoryName, YearMonthKey AS YearMonth, SUM(QuantityPurchased) AS PurchaseVolume
FROM vw_Purchases
WHERE DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 2 YEAR)
GROUP BY CategoryName, YearMonthKey
ORDER BY CategoryName, YearMonth;

-- A42. Categories with the most repeat customers (>= 2 purchases inside that category)
SELECT CategoryName, COUNT(*) AS RepeatCustomers
FROM (SELECT CategoryName, EmailId FROM vw_Purchases GROUP BY CategoryName, EmailId HAVING COUNT(*) > 1) x
GROUP BY CategoryName
ORDER BY RepeatCustomers DESC;

-- A43. Categories with the highest variance in purchase quantity
SELECT CategoryName, ROUND(VAR_SAMP(QuantityPurchased), 3) AS QuantityVariance, COUNT(*) AS PurchaseLines
FROM vw_Purchases GROUP BY CategoryName ORDER BY QuantityVariance DESC;

-- ===================== CARD USAGE & PATTERNS ==============================

-- A44. Most-used card types for purchases (purchases of card-holding users, by the card type(s) they hold)
SELECT c.CardType, COUNT(*) AS PurchasesByHolders, COUNT(DISTINCT c.EmailId) AS Users
FROM PurchaseDetails pd JOIN vw_UserCards c ON c.EmailId = pd.EmailId
GROUP BY c.CardType ORDER BY PurchasesByHolders DESC;
SELECT TRIM(CardType) AS CardType, COUNT(*) AS CardsOnFile FROM CardDetails GROUP BY TRIM(CardType) ORDER BY CardsOnFile DESC;

-- A45. Unique cards associated with each user
SELECT u.EmailId, COUNT(DISTINCT c.CardNumber) AS UniqueCards
FROM Users u LEFT JOIN vw_UserCards c ON c.EmailId = u.EmailId
GROUP BY u.EmailId ORDER BY UniqueCards DESC, u.EmailId;

-- A46. Card failure/rejection rate.  Not tracked; proxy = share of the owner's purchases made AFTER the card expiry date
SELECT c.CardType,
       COUNT(*)                                                         AS PurchaseCardPairs,
       SUM(pd.DateOfPurchase > c.ExpiryDate)                            AS AfterExpiry,
       ROUND(100 * SUM(pd.DateOfPurchase > c.ExpiryDate) / COUNT(*), 2) AS PctAfterExpiry
FROM PurchaseDetails pd JOIN vw_UserCards c ON c.EmailId = pd.EmailId
GROUP BY c.CardType;

-- A47. Users who changed cards in the last year.  No issue dates; proxy = users holding an expired AND a valid card
SELECT EmailId, SUM(ExpiryDate <  @ref_date) AS ExpiredCards, SUM(ExpiryDate >= @ref_date) AS ValidCards
FROM vw_UserCards GROUP BY EmailId
HAVING SUM(ExpiryDate < @ref_date) > 0 AND SUM(ExpiryDate >= @ref_date) > 0;

-- A48. Cards expired for more than a month but still listed (as of today)
SELECT CardNumber, NameOnCard, ExpiryDate, TIMESTAMPDIFF(MONTH, ExpiryDate, @today) AS MonthsExpired
FROM CardDetails
WHERE ExpiryDate < DATE_SUB(@today, INTERVAL 1 MONTH)
ORDER BY ExpiryDate;

-- A49. Card linked to the most users (possible data error)
SELECT cd.CardNumber, cd.NameOnCard, COUNT(DISTINCT u.EmailId) AS LinkedUsers
FROM CardDetails cd JOIN Users u ON cd.NameOnCard = SUBSTRING_INDEX(u.EmailId, '@', 1)
GROUP BY cd.CardNumber, cd.NameOnCard
ORDER BY LinkedUsers DESC
LIMIT 5;

-- A50. Purchases made with soon-to-expire cards (card expires within 90 days after the purchase)
SELECT pd.PurchaseId, pd.EmailId, pd.DateOfPurchase, c.CardNumber, c.ExpiryDate,
       DATEDIFF(c.ExpiryDate, pd.DateOfPurchase) AS DaysToExpiry
FROM PurchaseDetails pd JOIN vw_UserCards c ON c.EmailId = pd.EmailId
WHERE c.ExpiryDate BETWEEN pd.DateOfPurchase AND DATE_ADD(pd.DateOfPurchase, INTERVAL 90 DAY)
ORDER BY DaysToExpiry;

-- A51. Card numbers associated with multiple users (potential fraud) + card names shared by several users
SELECT CardNumber, COUNT(DISTINCT EmailId) AS Users, GROUP_CONCAT(DISTINCT EmailId) AS UserList
FROM vw_UserCards GROUP BY CardNumber HAVING COUNT(DISTINCT EmailId) > 1;       -- empty = no card shared
SELECT NameOnCard, COUNT(DISTINCT CardNumber) AS Cards, GROUP_CONCAT(CardNumber) AS CardNumbers
FROM CardDetails GROUP BY NameOnCard HAVING COUNT(*) > 1;                        -- name collision (Maria)

-- ===================== DEMOGRAPHICS & PERSONALISATION =====================

-- A52. Purchase behaviour by gender
SELECT u.Gender, COUNT(*) AS PurchaseCount, COUNT(DISTINCT u.EmailId) AS Buyers,
       SUM(v.QuantityPurchased) AS Units, SUM(v.PurchaseValue) AS TotalSpend,
       ROUND(AVG(v.PurchaseValue), 2) AS AvgPurchaseValue, ROUND(AVG(v.QuantityPurchased), 2) AS AvgQty
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId
GROUP BY u.Gender;

-- A53. Age distribution of customers making single purchases above 10,000
SELECT a.Age, COUNT(DISTINCT a.EmailId) AS CustomerCount
FROM vw_Purchases v JOIN vw_UserAge a ON a.EmailId = v.EmailId
WHERE v.PurchaseValue > 10000
GROUP BY a.Age ORDER BY a.Age;

-- A54. Age group most likely to purchase in each category (rank 1 per category, ties kept)
WITH x AS (
    SELECT v.CategoryName, a.AgeGroup, COUNT(*) AS PurchaseCount,
           RANK() OVER (PARTITION BY v.CategoryName ORDER BY COUNT(*) DESC) AS rk
    FROM vw_Purchases v JOIN vw_UserAge a ON a.EmailId = v.EmailId
    GROUP BY v.CategoryName, a.AgeGroup
)
SELECT CategoryName, AgeGroup, PurchaseCount FROM x WHERE rk = 1 ORDER BY CategoryName;

-- A55. Correlation between age and purchase frequency (Pearson r over ALL users; 0 purchases included)
WITH f AS (
    SELECT a.EmailId, a.Age, COUNT(pd.PurchaseId) AS Freq
    FROM vw_UserAge a LEFT JOIN PurchaseDetails pd ON pd.EmailId = a.EmailId
    GROUP BY a.EmailId, a.Age
)
SELECT ROUND((AVG(Age * Freq) - AVG(Age) * AVG(Freq)) / (STDDEV_POP(Age) * STDDEV_POP(Freq)), 4) AS PearsonR_AllUsers,
       COUNT(*) AS Users
FROM f;

-- A56. Which address regions (locality) spend the most?
SELECT l.Locality, COUNT(DISTINCT l.EmailId) AS Buyers, SUM(v.PurchaseValue) AS TotalSpend
FROM vw_Purchases v JOIN vw_UserLocality l ON l.EmailId = v.EmailId
GROUP BY l.Locality ORDER BY TotalSpend DESC;

-- A57. Percentage of high-spending customers who are female (high = total spend above the average customer total)
WITH hs AS (
    SELECT EmailId FROM vw_UserSpend WHERE TotalSpend > (SELECT AVG(TotalSpend) FROM vw_UserSpend)
)
SELECT COUNT(*) AS HighSpenders, SUM(u.Gender = 'F') AS Female,
       ROUND(100 * SUM(u.Gender = 'F') / COUNT(*), 2) AS FemaleHighSpenderPct
FROM hs JOIN Users u ON u.EmailId = hs.EmailId;

-- A58. Purchase patterns by locality/city parsed from the address text
SELECT l.Locality, COUNT(DISTINCT l.EmailId) AS Customers, COUNT(*) AS Purchases,
       SUM(v.QuantityPurchased) AS Units, SUM(v.PurchaseValue) AS TotalPurchaseValue,
       GROUP_CONCAT(DISTINCT v.CategoryName) AS Categories
FROM vw_Purchases v JOIN vw_UserLocality l ON l.EmailId = v.EmailId
GROUP BY l.Locality ORDER BY TotalPurchaseValue DESC;

-- A59. Gender distribution by category purchased
SELECT v.CategoryName, u.Gender, COUNT(*) AS PurchaseCount,
       ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY v.CategoryName), 1) AS PctWithinCategory
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId
GROUP BY v.CategoryName, u.Gender ORDER BY v.CategoryName, u.Gender;

-- ===================== SECURITY & ANOMALY DETECTION =======================

-- A60. Users with more than 3 cards
SELECT EmailId, COUNT(*) AS CardCount FROM vw_UserCards GROUP BY EmailId HAVING COUNT(*) > 3;

-- A61. Cards with suspiciously high balance (> @bal_threshold)
SET @bal_threshold = 15000;
SELECT CardNumber, NameOnCard, CardType, Balance
FROM CardDetails WHERE Balance > @bal_threshold ORDER BY Balance DESC;

-- A62. Unusual spike in purchases of a product (units > 1.5x previous ACTIVE consecutive month)
WITH m AS (
    SELECT ProductId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0 AS ym, SUM(QuantityPurchased) AS Qty
    FROM PurchaseDetails GROUP BY ProductId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0
),
l AS (
    SELECT ProductId, ym, Qty, LAG(Qty) OVER w AS PrevQty, LAG(ym) OVER w AS PrevYm
    FROM m WINDOW w AS (PARTITION BY ProductId ORDER BY ym)
)
SELECT l.ProductId, p.ProductName, l.ym AS YearMonthNum, l.Qty, l.PrevQty,
       ROUND(100 * (l.Qty - l.PrevQty) / l.PrevQty, 1) AS PctIncrease
FROM l JOIN Products p ON p.ProductId = l.ProductId
WHERE l.PrevQty IS NOT NULL AND PERIOD_DIFF(l.ym, l.PrevYm) = 1 AND l.Qty > 1.5 * l.PrevQty
ORDER BY PctIncrease DESC;

-- A63. Consecutive high-value purchases (both in the top 10% of purchase values) by one user within 7 days
WITH h AS (
    SELECT PurchaseId, EmailId, DateOfPurchase, PurchaseValue,
           NTILE(10) OVER (ORDER BY PurchaseValue DESC) AS ValueDecile
    FROM vw_Purchases
),
x AS (
    SELECT *, LAG(DateOfPurchase) OVER (PARTITION BY EmailId ORDER BY DateOfPurchase, PurchaseId) AS PrevDate,
              LAG(ValueDecile)    OVER (PARTITION BY EmailId ORDER BY DateOfPurchase, PurchaseId) AS PrevDecile
    FROM h WHERE ValueDecile = 1
)
SELECT DISTINCT EmailId, PrevDate, DateOfPurchase, PurchaseValue
FROM x WHERE PrevDate IS NOT NULL AND DATEDIFF(DateOfPurchase, PrevDate) <= 7;

-- A64. Users whose cumulative purchases exceed the total balance on their listed cards
SELECT s.EmailId, s.TotalSpend, COALESCE(SUM(c.Balance), 0) AS TotalCardBalance,
       s.TotalSpend - COALESCE(SUM(c.Balance), 0) AS Shortfall
FROM vw_UserSpend s LEFT JOIN vw_UserCards c ON c.EmailId = s.EmailId
GROUP BY s.EmailId, s.TotalSpend
HAVING s.TotalSpend > COALESCE(SUM(c.Balance), 0)
ORDER BY Shortfall DESC;

-- A65. Invalid / duplicate e-mails and poorly formatted addresses
SELECT LOWER(EmailId) AS EmailId, COUNT(*) AS Cnt FROM Users GROUP BY LOWER(EmailId) HAVING COUNT(*) > 1;   -- duplicates
SELECT EmailId AS InvalidEmail FROM Users
WHERE EmailId NOT REGEXP '^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}$';                               -- bad format
SELECT DISTINCT pd.EmailId AS PurchaseEmailNotInUsers FROM PurchaseDetails pd
WHERE NOT EXISTS (SELECT 1 FROM Users u WHERE u.EmailId = pd.EmailId);                                      -- orphan (typo) e-mails
SELECT EmailId, Address FROM Users
WHERE Address IS NULL OR TRIM(Address) = '' OR Address NOT LIKE '%,%' OR Address LIKE '%;%'
ORDER BY EmailId;                                                                                           -- weak / multi-value addresses

-- A66. Products bought predominantly by a small group (top 20% of buyers carry >= 80% of the units)
WITH pu AS (
    SELECT ProductId, EmailId, SUM(QuantityPurchased) AS Qty FROM PurchaseDetails GROUP BY ProductId, EmailId
),
rk AS (
    SELECT ProductId, EmailId, Qty,
           ROW_NUMBER() OVER (PARTITION BY ProductId ORDER BY Qty DESC, EmailId) AS rn,
           COUNT(*)     OVER (PARTITION BY ProductId) AS Buyers,
           SUM(Qty)     OVER (PARTITION BY ProductId) AS Total
    FROM pu
)
SELECT ProductId, MAX(Buyers) AS Buyers, MAX(Total) AS TotalUnits,
       ROUND(100 * SUM(Qty) / MAX(Total), 1) AS PctUnitsFromTop20PctBuyers
FROM rk
WHERE rn <= CEIL(0.2 * Buyers)
GROUP BY ProductId
HAVING SUM(Qty) / MAX(Total) >= 0.8 AND MAX(Buyers) >= 2
ORDER BY TotalUnits DESC;

-- A67. Users with a drastic change in monthly purchase pattern (a month with >= 2x or <= 0.5x their own monthly average)
WITH um AS (
    SELECT EmailId, YearMonthKey, COUNT(*) AS Cnt, SUM(PurchaseValue) AS Val FROM vw_Purchases GROUP BY EmailId, YearMonthKey
),
a AS (
    SELECT *, AVG(Cnt) OVER (PARTITION BY EmailId) AS AvgCnt, COUNT(*) OVER (PARTITION BY EmailId) AS Months FROM um
)
SELECT EmailId, YearMonthKey, Cnt, ROUND(AvgCnt, 2) AS AvgMonthlyCnt,
       CASE WHEN Cnt >= 2 * AvgCnt THEN 'SPIKE' ELSE 'DROP' END AS Change_
FROM a WHERE Months >= 3 AND (Cnt >= 2 * AvgCnt OR Cnt <= 0.5 * AvgCnt)
ORDER BY EmailId, YearMonthKey;

-- A68. Purchases whose quantity is at/above the 95th percentile (nearest-rank) for that product and above the product average
WITH r AS (
    SELECT PurchaseId, ProductId, EmailId, QuantityPurchased,
           ROW_NUMBER() OVER (PARTITION BY ProductId ORDER BY QuantityPurchased) AS rn,
           COUNT(*)     OVER (PARTITION BY ProductId) AS n,
           AVG(QuantityPurchased) OVER (PARTITION BY ProductId) AS AvgQty
    FROM PurchaseDetails
),
p95 AS (SELECT ProductId, MIN(QuantityPurchased) AS P95Qty FROM r WHERE rn >= CEIL(0.95 * n) GROUP BY ProductId)
SELECT r.PurchaseId, r.ProductId, r.EmailId, r.QuantityPurchased, p95.P95Qty, ROUND(r.AvgQty, 2) AS ProductAvgQty
FROM r JOIN p95 ON p95.ProductId = r.ProductId
WHERE r.n >= 5 AND r.QuantityPurchased >= p95.P95Qty AND r.QuantityPurchased > r.AvgQty
ORDER BY r.ProductId, r.QuantityPurchased DESC;

-- A69. Card numbers with multiple expiry dates
SELECT CardNumber, COUNT(DISTINCT ExpiryDate) AS DistinctExpiryDates
FROM CardDetails GROUP BY CardNumber HAVING COUNT(DISTINCT ExpiryDate) > 1;

-- A70. Gender/title inconsistency in NameOnCard (title Mr/Mrs/Ms/Miss) + cards whose name matches no user
SELECT u.EmailId, u.Gender, cd.NameOnCard
FROM Users u JOIN CardDetails cd ON cd.NameOnCard = SUBSTRING_INDEX(u.EmailId, '@', 1)
WHERE (u.Gender = 'M' AND cd.NameOnCard REGEXP '^(Mrs|Ms|Miss)\\.? ')
   OR (u.Gender = 'F' AND cd.NameOnCard REGEXP '^Mr\\.? ');           -- empty: names carry no titles
SELECT cd.CardNumber, cd.NameOnCard AS CardNameMatchingNoUser
FROM CardDetails cd
WHERE NOT EXISTS (SELECT 1 FROM Users u WHERE SUBSTRING_INDEX(u.EmailId, '@', 1) = cd.NameOnCard);

-- ===================== TEMPORAL ANALYSIS ==================================

-- A71. Peak day / weekday / week / month for purchase volume
SELECT * FROM (SELECT 'Day'     AS PeriodType, CAST(DateOfPurchase AS CHAR) AS Period, COUNT(*) AS TotalPurchases
               FROM PurchaseDetails GROUP BY DateOfPurchase ORDER BY COUNT(*) DESC, DateOfPurchase LIMIT 1) a
UNION ALL
SELECT * FROM (SELECT 'Weekday', DAYNAME(DateOfPurchase), COUNT(*)
               FROM PurchaseDetails GROUP BY DAYNAME(DateOfPurchase) ORDER BY COUNT(*) DESC LIMIT 1) b
UNION ALL
SELECT * FROM (SELECT 'Week', CAST(YEARWEEK(DateOfPurchase, 1) AS CHAR), COUNT(*)
               FROM PurchaseDetails GROUP BY YEARWEEK(DateOfPurchase, 1) ORDER BY COUNT(*) DESC LIMIT 1) c
UNION ALL
SELECT * FROM (SELECT 'Month', DATE_FORMAT(DateOfPurchase, '%Y-%m'), COUNT(*)
               FROM PurchaseDetails GROUP BY DATE_FORMAT(DateOfPurchase, '%Y-%m') ORDER BY COUNT(*) DESC LIMIT 1) d;

-- A72. Average purchase value per month
SELECT YearMonthKey AS YearMonth, ROUND(AVG(PurchaseValue), 2) AS AvgPurchaseValue, COUNT(*) AS Purchases
FROM vw_Purchases GROUP BY YearMonthKey ORDER BY YearMonth;

-- A73. End-of-month and holiday spikes (avg purchases per calendar day vs the normal day)
--      holiday list = fixed-date holidays + Diwali 2013 (3-Nov-2013); edit as needed
WITH days AS (
    SELECT DateOfPurchase AS d, COUNT(*) AS Cnt FROM PurchaseDetails GROUP BY DateOfPurchase
),
tag AS (
    SELECT d, Cnt,
           CASE WHEN DAY(d) >= DAY(LAST_DAY(d)) - 2 THEN 'Month-end (last 3 days)' ELSE 'Other days' END AS DayType,
           CASE WHEN DATE_FORMAT(d, '%m-%d') IN ('01-01','01-26','08-15','10-02','12-25') OR d = '2013-11-03' THEN 'Holiday' ELSE 'Non-holiday' END AS HolidayType
    FROM days
)
SELECT 'Month-end vs other' AS Test, DayType AS Segment, COUNT(*) AS ActiveDays, ROUND(AVG(Cnt), 2) AS AvgPurchasesPerActiveDay FROM tag GROUP BY DayType
UNION ALL
SELECT 'Holiday vs other', HolidayType, COUNT(*), ROUND(AVG(Cnt), 2) FROM tag GROUP BY HolidayType;

-- A74. Users who purchase regularly (>= 3 distinct purchase days; avg gap ~monthly 25-35d or ~quarterly 80-100d)
WITH g AS (
    SELECT EmailId, DateOfPurchase,
           DATEDIFF(DateOfPurchase, LAG(DateOfPurchase) OVER (PARTITION BY EmailId ORDER BY DateOfPurchase)) AS GapDays
    FROM (SELECT DISTINCT EmailId, DateOfPurchase FROM PurchaseDetails) d
)
SELECT EmailId, COUNT(*) AS PurchaseDays, ROUND(AVG(GapDays), 1) AS AvgGapDays,
       CASE WHEN AVG(GapDays) BETWEEN 25 AND 35 THEN 'Monthly'
            WHEN AVG(GapDays) BETWEEN 80 AND 100 THEN 'Quarterly'
            WHEN AVG(GapDays) <= 7 THEN 'Weekly / burst buyer'
            ELSE 'Irregular' END AS Pattern
FROM g GROUP BY EmailId HAVING COUNT(*) >= 3 ORDER BY AvgGapDays;

-- A75. Average time from registration to first purchase.  No registration date -> proxy = days from the
--      start of the data (@min_date) to each user's first purchase, plus the overall average.
SELECT EmailId, FirstPurchase, DATEDIFF(FirstPurchase, @min_date) AS DaysFromDataStartToFirstPurchase,
       ROUND(AVG(DATEDIFF(FirstPurchase, @min_date)) OVER (), 1) AS OverallAvgDays
FROM vw_UserSpend ORDER BY FirstPurchase;

-- A76. Users who have never purchased
SELECT u.EmailId, u.RoleId, u.Gender
FROM Users u WHERE NOT EXISTS (SELECT 1 FROM PurchaseDetails pd WHERE pd.EmailId = u.EmailId)
ORDER BY u.EmailId;

-- A77. Products with increasing / decreasing sales: month-over-month movement + recent-vs-previous 6 months
WITH m AS (
    SELECT ProductId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0 AS ym, SUM(QuantityPurchased) AS Qty
    FROM PurchaseDetails GROUP BY ProductId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0
)
SELECT ProductId, ym AS YearMonthNum, Qty, LAG(Qty) OVER (PARTITION BY ProductId ORDER BY ym) AS PrevQty,
       CASE WHEN LAG(Qty) OVER (PARTITION BY ProductId ORDER BY ym) IS NULL THEN 'first month'
            WHEN Qty > LAG(Qty) OVER (PARTITION BY ProductId ORDER BY ym) THEN 'INCREASING'
            WHEN Qty < LAG(Qty) OVER (PARTITION BY ProductId ORDER BY ym) THEN 'DECREASING' ELSE 'FLAT' END AS Trend
FROM m ORDER BY ProductId, ym;

SELECT ProductId,
       SUM(CASE WHEN DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END) AS Recent6M,
       SUM(CASE WHEN DateOfPurchase <= DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END) AS Previous,
       SUM(CASE WHEN DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END)
     - SUM(CASE WHEN DateOfPurchase <= DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END) AS Change_
FROM PurchaseDetails GROUP BY ProductId ORDER BY Change_ DESC;

-- A78. Do users buy more near card expiry?  Avg units per purchase by distance to the owner's card expiry
SELECT CASE WHEN c.ExpiryDate < pd.DateOfPurchase THEN '1) Already expired'
            WHEN DATEDIFF(c.ExpiryDate, pd.DateOfPurchase) <= 90  THEN '2) Expires <= 90 days'
            WHEN DATEDIFF(c.ExpiryDate, pd.DateOfPurchase) <= 365 THEN '3) Expires <= 1 year'
            ELSE '4) Expires > 1 year' END AS ExpiryBucket,
       COUNT(*) AS Purchases, ROUND(AVG(pd.QuantityPurchased), 2) AS AvgUnits
FROM PurchaseDetails pd JOIN vw_UserCards c ON c.EmailId = pd.EmailId
GROUP BY ExpiryBucket ORDER BY ExpiryBucket;

-- A79. Products added to the catalogue but never purchased (with tied-up value)
SELECT p.ProductId, p.ProductName, p.Price, p.QuantityAvailable, p.Price * p.QuantityAvailable AS StockValue
FROM Products p LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
WHERE pd.PurchaseId IS NULL ORDER BY StockValue DESC;

-- A80. First and last purchase recorded (ties kept)
SELECT 'FirstPurchase' AS PurchaseType, PurchaseId, EmailId, ProductId, DateOfPurchase
FROM PurchaseDetails WHERE DateOfPurchase = (SELECT MIN(DateOfPurchase) FROM PurchaseDetails)
UNION ALL
SELECT 'LastPurchase', PurchaseId, EmailId, ProductId, DateOfPurchase
FROM PurchaseDetails WHERE DateOfPurchase = (SELECT MAX(DateOfPurchase) FROM PurchaseDetails);

-- ===================== CROSS-TABLE INSIGHTS ===============================

-- A81. User role vs purchasing activity
SELECT r.RoleName, COUNT(DISTINCT u.EmailId) AS Users, COUNT(DISTINCT pd.EmailId) AS ActiveBuyers,
       COUNT(pd.PurchaseId) AS TotalPurchases, ROUND(COUNT(pd.PurchaseId) / COUNT(DISTINCT u.EmailId), 2) AS PurchasesPerUser
FROM Users u JOIN Roles r ON r.RoleId = u.RoleId
LEFT JOIN PurchaseDetails pd ON pd.EmailId = u.EmailId
GROUP BY r.RoleName;

-- A82. Do customers with a higher price per product buy less frequently?  (list + Pearson r)
SELECT EmailId, ROUND(AVG(Price), 2) AS AvgPricePerProduct, COUNT(*) AS PurchaseFrequency
FROM vw_Purchases GROUP BY EmailId ORDER BY AvgPricePerProduct DESC;
WITH u AS (SELECT EmailId, AVG(Price) AS ap, COUNT(*) AS f FROM vw_Purchases GROUP BY EmailId)
SELECT ROUND((AVG(ap * f) - AVG(ap) * AVG(f)) / (STDDEV_POP(ap) * STDDEV_POP(f)), 4) AS PearsonR_PriceVsFrequency FROM u;

-- A83. Correlation: number of distinct products purchased vs total card balance
WITH u AS (
    SELECT s.EmailId, s.DistinctProducts AS ProductCount, SUM(c.Balance) AS TotalBalance
    FROM vw_UserSpend s JOIN vw_UserCards c ON c.EmailId = s.EmailId GROUP BY s.EmailId, s.DistinctProducts
)
SELECT COUNT(*) AS Users,
       ROUND((AVG(ProductCount * TotalBalance) - AVG(ProductCount) * AVG(TotalBalance)) / (STDDEV_POP(ProductCount) * STDDEV_POP(TotalBalance)), 4) AS PearsonR
FROM u;

-- A84. Category with the highest average spend per buying user
SELECT CategoryName, ROUND(AVG(UserSpend), 2) AS AvgSpendPerUser, COUNT(*) AS Buyers
FROM (SELECT EmailId, CategoryName, SUM(PurchaseValue) AS UserSpend FROM vw_Purchases GROUP BY EmailId, CategoryName) t
GROUP BY CategoryName ORDER BY AvgSpendPerUser DESC;

-- A85. Segment users by purchase frequency and spend (terciles of each => 3x3 matrix)
WITH t AS (
    SELECT EmailId, Purchases, TotalSpend,
           NTILE(3) OVER (ORDER BY Purchases DESC) AS FreqTier,
           NTILE(3) OVER (ORDER BY TotalSpend DESC) AS SpendTier
    FROM vw_UserSpend
)
SELECT EmailId, Purchases, TotalSpend,
       CONCAT(CASE FreqTier WHEN 1 THEN 'HighFreq' WHEN 2 THEN 'MidFreq' ELSE 'LowFreq' END, ' / ',
              CASE SpendTier WHEN 1 THEN 'HighSpend' WHEN 2 THEN 'MidSpend' ELSE 'LowSpend' END) AS Segment
FROM t ORDER BY FreqTier, SpendTier, TotalSpend DESC;

-- A86. Users who bought both the most and the least expensive product (catalogue-wide, and among sold products)
SELECT pd.EmailId, 'catalogue extremes' AS Basis
FROM PurchaseDetails pd JOIN Products p ON p.ProductId = pd.ProductId
GROUP BY pd.EmailId
HAVING MAX(p.Price) = (SELECT MAX(Price) FROM Products) AND MIN(p.Price) = (SELECT MIN(Price) FROM Products)
UNION ALL
SELECT v.EmailId, 'sold-product extremes'
FROM vw_Purchases v
GROUP BY v.EmailId
HAVING MAX(v.Price) = (SELECT MAX(Price) FROM vw_Purchases) AND MIN(v.Price) = (SELECT MIN(Price) FROM vw_Purchases);

-- A87. Products bought in high volumes (>= 3 units) by only ONE gender
SELECT v.ProductId, v.ProductName, MAX(u.Gender) AS OnlyGender, SUM(v.QuantityPurchased) AS Units
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId
GROUP BY v.ProductId, v.ProductName
HAVING COUNT(DISTINCT u.Gender) = 1 AND SUM(v.QuantityPurchased) >= 3
ORDER BY Units DESC;

-- A88. Effect of product age on sales.  No "date added"; proxy = catalogue order (ProductId sequence, lower = older)
SELECT CONCAT('Quartile ', age_q) AS CatalogueAgeQuartile_1_oldest, COUNT(*) AS Products,
       SUM(Units) AS Units, ROUND(AVG(Units), 2) AS AvgUnitsPerProduct
FROM (SELECT p.ProductId, NTILE(4) OVER (ORDER BY p.ProductId) AS age_q, COALESCE(SUM(pd.QuantityPurchased), 0) AS Units
      FROM Products p LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId GROUP BY p.ProductId) t
GROUP BY age_q ORDER BY age_q;

-- A89. Top 5 product pairs bought together (same user, same day)
SELECT ProductA, pa.ProductName AS NameA, ProductB, pb.ProductName AS NameB, COUNT(*) AS TimesTogether
FROM vw_ProductPairs pp
JOIN Products pa ON pa.ProductId = pp.ProductA
JOIN Products pb ON pb.ProductId = pp.ProductB
GROUP BY ProductA, pa.ProductName, ProductB, pb.ProductName
ORDER BY TimesTogether DESC, ProductA, ProductB
LIMIT 5;

-- A90. Are users more likely to purchase again after a big order? (big = top-decile order value)
WITH o AS (
    SELECT PurchaseId, EmailId, DateOfPurchase, PurchaseValue,
           NTILE(10) OVER (ORDER BY PurchaseValue DESC) AS dec_,
           MAX(DateOfPurchase) OVER (PARTITION BY EmailId) AS LastDate
    FROM vw_Purchases
)
SELECT CASE WHEN dec_ = 1 THEN 'Big order (top 10%)' ELSE 'Other orders' END AS OrderType,
       COUNT(*) AS Orders,
       ROUND(100 * AVG(DateOfPurchase < LastDate), 1) AS PctFollowedByAnotherPurchase
FROM o GROUP BY OrderType;

-- ===================== CUSTOMER LIFETIME VALUE ============================

-- A91. Customer lifetime value (historical) + simple projected 1-year CLV (AOV x annual frequency)
SELECT EmailId, TotalSpend AS HistoricalCLV, Purchases, ROUND(AvgPurchaseValue, 2) AS AOV,
       DATEDIFF(LastPurchase, FirstPurchase) + 1 AS TenureDays,
       ROUND(AvgPurchaseValue * Purchases / (DATEDIFF(LastPurchase, FirstPurchase) + 1) * 365, 2) AS ProjectedAnnualCLV
FROM vw_UserSpend ORDER BY HistoricalCLV DESC;

-- A92. Longest and shortest customer relationships (first -> last purchase; users with >= 2 purchase days)
(SELECT 'Longest' AS Rel, EmailId, FirstPurchase, LastPurchase, DATEDIFF(LastPurchase, FirstPurchase) AS RelationshipDays
 FROM vw_UserSpend WHERE PurchaseDays >= 2 ORDER BY RelationshipDays DESC LIMIT 3)
UNION ALL
(SELECT 'Shortest', EmailId, FirstPurchase, LastPurchase, DATEDIFF(LastPurchase, FirstPurchase)
 FROM vw_UserSpend WHERE PurchaseDays >= 2 ORDER BY DATEDIFF(LastPurchase, FirstPurchase) ASC LIMIT 3);

-- A93. Customers who increased spend year over year (consecutive calendar years)
WITH y AS (SELECT EmailId, YEAR(DateOfPurchase) AS Yr, SUM(PurchaseValue) AS Spend FROM vw_Purchases GROUP BY EmailId, YEAR(DateOfPurchase)),
l AS (SELECT *, LAG(Spend) OVER (PARTITION BY EmailId ORDER BY Yr) AS PrevSpend, LAG(Yr) OVER (PARTITION BY EmailId ORDER BY Yr) AS PrevYr FROM y)
SELECT EmailId, PrevYr, Yr, PrevSpend, Spend, Spend - PrevSpend AS Growth
FROM l WHERE PrevSpend IS NOT NULL AND Yr = PrevYr + 1 AND Spend > PrevSpend ORDER BY Growth DESC;

-- A94. Users whose spend growth is above the average growth across all users
WITH y AS (SELECT EmailId, YEAR(DateOfPurchase) AS Yr, SUM(PurchaseValue) AS Spend FROM vw_Purchases GROUP BY EmailId, YEAR(DateOfPurchase)),
g AS (SELECT EmailId, Yr, Spend - LAG(Spend) OVER (PARTITION BY EmailId ORDER BY Yr) AS Growth FROM y)
SELECT EmailId, Yr, Growth FROM g
WHERE Growth IS NOT NULL AND Growth > (SELECT AVG(Growth) FROM g WHERE Growth IS NOT NULL)
ORDER BY Growth DESC;

-- A95. Top 5 customers for every year by spend
WITH y AS (SELECT YEAR(DateOfPurchase) AS Yr, EmailId, SUM(PurchaseValue) AS TotalYearSpend FROM vw_Purchases GROUP BY YEAR(DateOfPurchase), EmailId),
r AS (SELECT *, RANK() OVER (PARTITION BY Yr ORDER BY TotalYearSpend DESC) AS rk FROM y)
SELECT Yr AS PurchaseYear, rk AS Rank_, EmailId, TotalYearSpend FROM r WHERE rk <= 5 ORDER BY Yr, rk;

-- A96. Classify users into High / Medium / Low value segments (spend terciles)
SELECT EmailId, TotalSpend,
       CASE NTILE(3) OVER (ORDER BY TotalSpend DESC) WHEN 1 THEN 'High' WHEN 2 THEN 'Medium' ELSE 'Low' END AS Segment
FROM vw_UserSpend ORDER BY TotalSpend DESC;

-- ===================== INVENTORY & EFFICIENCY =============================

-- A97. Products that went out of stock and were replenished.  Needs stock history (not in schema).
--      Closest signal: sold-units vs current stock, and products already at/below sold volume.
SELECT p.ProductId, p.ProductName, p.QuantityAvailable AS CurrentStock, COALESCE(SUM(pd.QuantityPurchased), 0) AS UnitsSold,
       CASE WHEN p.QuantityAvailable = 0 THEN 'Out of stock now'
            WHEN COALESCE(SUM(pd.QuantityPurchased), 0) >= p.QuantityAvailable THEN 'Needs replenishment (sold >= stock left)'
            ELSE 'Healthy' END AS Status
FROM Products p LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.QuantityAvailable ORDER BY UnitsSold DESC;
/* To answer this properly capture history:
   CREATE TABLE InventoryLog (ProductId CHAR(4), LogDate DATE, QuantityAvailable INT);  */

-- A98. Average days products stay in inventory before first sale (proxy: days from data start to first sale)
SELECT ROUND(AVG(DaysToFirstSale), 1) AS AvgDaysBeforeFirstSale, COUNT(*) AS ProductsSold
FROM (SELECT ProductId, DATEDIFF(MIN(DateOfPurchase), @min_date) AS DaysToFirstSale FROM PurchaseDetails GROUP BY ProductId) t;
SELECT ProductId, MIN(DateOfPurchase) AS FirstSale, DATEDIFF(MIN(DateOfPurchase), @min_date) AS DaysToFirstSale
FROM PurchaseDetails GROUP BY ProductId ORDER BY DaysToFirstSale DESC;

-- A99. Replenishment frequency.  No replenishment history -> implied reorder interval = stock / daily sales rate
SELECT p.ProductId, p.ProductName, p.QuantityAvailable,
       ROUND(SUM(pd.QuantityPurchased) / (DATEDIFF(@ref_date, @min_date) + 1), 4) AS UnitsPerDay,
       ROUND(p.QuantityAvailable / (SUM(pd.QuantityPurchased) / (DATEDIFF(@ref_date, @min_date) + 1)), 0) AS DaysOfStockLeft
FROM Products p JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.QuantityAvailable
ORDER BY DaysOfStockLeft;

-- A100. Inventory value tied up in unsold products
SELECT ProductId, ProductName, Price, QuantityAvailable, Price * QuantityAvailable AS InventoryValue,
       SUM(Price * QuantityAvailable) OVER () AS TotalUnsoldInventoryValue
FROM Products p
WHERE QuantityAvailable > 0 AND NOT EXISTS (SELECT 1 FROM PurchaseDetails pd WHERE pd.ProductId = p.ProductId)
ORDER BY InventoryValue DESC;


/* ##########################################################################
   PART B  -  "Questions_default.pdf" LIST 2  (B1 - B100)
   ########################################################################## */

-- B1. Total number of customers by gender and role
SELECT r.RoleName, u.Gender, COUNT(DISTINCT u.EmailId) AS CustomerCount
FROM Users u JOIN Roles r ON r.RoleId = u.RoleId
GROUP BY r.RoleName, u.Gender ORDER BY r.RoleName, u.Gender;

-- B2. Average age of customers by gender
SELECT Gender, ROUND(AVG(Age), 1) AS AverageAge, COUNT(*) AS Users FROM vw_UserAge GROUP BY Gender;

-- B3. Products with the highest sales volume over the last year of data
SELECT ProductId, ProductName, SUM(QuantityPurchased) AS TotalQuantity
FROM vw_Purchases
WHERE DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 1 YEAR)
GROUP BY ProductId, ProductName ORDER BY TotalQuantity DESC;

-- B4. Top 5 categories by revenue
SELECT CategoryName, SUM(PurchaseValue) AS Revenue FROM vw_Purchases GROUP BY CategoryName ORDER BY Revenue DESC LIMIT 5;

-- B5. Active customers (purchased in the last 6 months of data)
SELECT COUNT(DISTINCT EmailId) AS ActiveCustomers
FROM PurchaseDetails WHERE DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 6 MONTH);

-- B6. Total revenue from male customers
SELECT SUM(v.PurchaseValue) AS TotalRevenueMale FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId WHERE u.Gender = 'M';

-- B7. Average purchase quantity of male customers
SELECT u.Gender, ROUND(AVG(v.QuantityPurchased), 3) AS AvgPurchaseQuantity
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId WHERE u.Gender = 'M' GROUP BY u.Gender;

-- B8. Total revenue from female customers
SELECT SUM(v.PurchaseValue) AS TotalRevenueFemale FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId WHERE u.Gender = 'F';

-- B9. Average purchase quantity of female customers
SELECT u.Gender, ROUND(AVG(v.QuantityPurchased), 3) AS AvgPurchaseQuantity
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId WHERE u.Gender = 'F' GROUP BY u.Gender;

-- B10. Products with the lowest stock levels
SELECT ProductId, ProductName, QuantityAvailable FROM Products ORDER BY QuantityAvailable, ProductId LIMIT 10;

-- B11. Average price of products in each category
SELECT c.CategoryName, ROUND(AVG(p.Price), 2) AS AveragePrice, COUNT(*) AS Products
FROM Products p JOIN Categories c ON c.CategoryId = p.CategoryId GROUP BY c.CategoryName ORDER BY AveragePrice DESC;

-- B12. Distribution of card types among customers
SELECT TRIM(CardType) AS CardType, COUNT(*) AS CardCount, ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS Pct
FROM CardDetails GROUP BY TRIM(CardType);

-- B13. Average card balance by card type
SELECT TRIM(CardType) AS CardType, ROUND(AVG(Balance), 2) AS AverageBalance, MIN(Balance) AS MinBal, MAX(Balance) AS MaxBal
FROM CardDetails GROUP BY TRIM(CardType);

-- B14. Monthly sales trend for the last 12 months of data
SELECT YearMonthKey AS Month, SUM(PurchaseValue) AS MonthlyRevenue, SUM(QuantityPurchased) AS Units, COUNT(*) AS Purchases
FROM vw_Purchases
WHERE DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 12 MONTH)
GROUP BY YearMonthKey ORDER BY Month;

-- B15. Day of week with the highest sales volume (full ranking)
SELECT DAYNAME(DateOfPurchase) AS DayOfWeek_, COUNT(*) AS SalesCount, SUM(QuantityPurchased) AS Units
FROM PurchaseDetails GROUP BY DAYNAME(DateOfPurchase), DAYOFWEEK(DateOfPurchase) ORDER BY SalesCount DESC;

-- B16. Customers who purchased across multiple categories
SELECT EmailId, COUNT(DISTINCT CategoryId) AS CategoryCount FROM vw_Purchases GROUP BY EmailId HAVING COUNT(DISTINCT CategoryId) > 1
ORDER BY CategoryCount DESC;

-- B17. Repeat purchase rate
SELECT SUM(Purchases > 1) AS RepeatCustomers, COUNT(*) AS Customers, ROUND(100 * SUM(Purchases > 1) / COUNT(*), 2) AS RepeatRatePct
FROM vw_UserSpend;

-- B18. Revenue per unit sold by product (equals list price; there is no discounting)
SELECT ProductId, ProductName, SUM(PurchaseValue) / SUM(QuantityPurchased) AS RevenuePerUnit, SUM(QuantityPurchased) AS Units
FROM vw_Purchases GROUP BY ProductId, ProductName ORDER BY RevenuePerUnit DESC;

-- B19. Average customer lifetime value + per-customer value
SELECT ROUND(AVG(TotalSpend), 2) AS AvgCustomerLifetimeValue, ROUND(MAX(TotalSpend), 2) AS MaxCLV, ROUND(MIN(TotalSpend), 2) AS MinCLV FROM vw_UserSpend;
SELECT EmailId, TotalSpend AS CustomerValue FROM vw_UserSpend ORDER BY TotalSpend DESC;

-- B20. Revenue by customer age group
SELECT a.AgeGroup, CONCAT(a.AgeGroup, '-', a.AgeGroup + 9) AS AgeBand, COUNT(DISTINCT a.EmailId) AS Buyers, SUM(v.PurchaseValue) AS Revenue
FROM vw_Purchases v JOIN vw_UserAge a ON a.EmailId = v.EmailId GROUP BY a.AgeGroup ORDER BY a.AgeGroup;

-- B21. Most popular product by quantity in each category (ties kept)
WITH s AS (
    SELECT CategoryName, ProductName, SUM(QuantityPurchased) AS TotalQuantity,
           RANK() OVER (PARTITION BY CategoryName ORDER BY SUM(QuantityPurchased) DESC) AS rk
    FROM vw_Purchases GROUP BY CategoryName, ProductName
)
SELECT CategoryName, ProductName, TotalQuantity FROM s WHERE rk = 1 ORDER BY CategoryName;

-- B22. Customers with the highest total purchase quantity
SELECT EmailId, Units AS TotalQuantity FROM vw_UserSpend ORDER BY Units DESC, EmailId LIMIT 10;

-- B23. Average interval between purchases for repeat customers (per customer + overall)
WITH g AS (
    SELECT EmailId, DATEDIFF(DateOfPurchase, LAG(DateOfPurchase) OVER (PARTITION BY EmailId ORDER BY DateOfPurchase, PurchaseId)) AS GapDays
    FROM PurchaseDetails
)
SELECT EmailId, ROUND(AVG(GapDays), 2) AS AvgIntervalDays, COUNT(GapDays) AS Gaps,
       ROUND(AVG(AVG(GapDays)) OVER (), 2) AS OverallAvgOfCustomerAvgs
FROM g WHERE GapDays IS NOT NULL GROUP BY EmailId ORDER BY AvgIntervalDays;

-- B24. Top 10 products by total revenue
SELECT ProductId, ProductName, SUM(PurchaseValue) AS TotalRevenue FROM vw_Purchases GROUP BY ProductId, ProductName ORDER BY TotalRevenue DESC LIMIT 10;

-- B25. Percentage of customers using each card type (customers = users owning a card of that type)
SELECT CardType, COUNT(DISTINCT EmailId) AS Customers,
       ROUND(100 * COUNT(DISTINCT EmailId) / (SELECT COUNT(DISTINCT EmailId) FROM vw_UserCards), 2) AS PctCustomers
FROM vw_UserCards GROUP BY CardType;

-- B26. Fastest-growing categories: last 6 months vs the 6 months before (units)
SELECT CategoryName,
       SUM(CASE WHEN DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END) AS Recent6M,
       SUM(CASE WHEN DateOfPurchase <= DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END) AS Previous,
       SUM(CASE WHEN DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE -QuantityPurchased END) AS Growth
FROM vw_Purchases GROUP BY CategoryName ORDER BY Growth DESC;

-- B27. Correlation between product price and quantity sold (Pearson r over all products, unsold = 0) + price-band view
WITH t AS (SELECT p.ProductId, p.Price, COALESCE(SUM(pd.QuantityPurchased), 0) AS Qty
           FROM Products p LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId GROUP BY p.ProductId, p.Price)
SELECT ROUND((AVG(Price * Qty) - AVG(Price) * AVG(Qty)) / (STDDEV_POP(Price) * STDDEV_POP(Qty)), 4) AS PearsonR_PriceVsQty FROM t;
SELECT CASE WHEN Price < 1000 THEN '1) < 1,000' WHEN Price < 10000 THEN '2) 1,000-9,999' WHEN Price < 100000 THEN '3) 10,000-99,999'
            ELSE '4) >= 100,000' END AS PriceBand, COUNT(*) AS Products, ROUND(AVG(Qty), 2) AS AvgUnitsSoldPerProduct
FROM (SELECT p.ProductId, p.Price, COALESCE(SUM(pd.QuantityPurchased), 0) AS Qty
      FROM Products p LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId GROUP BY p.ProductId, p.Price) x
GROUP BY PriceBand ORDER BY PriceBand;

-- B28. Average purchase quantity by category
SELECT CategoryName, ROUND(AVG(QuantityPurchased), 3) AS AvgQuantity FROM vw_Purchases GROUP BY CategoryName ORDER BY AvgQuantity DESC;

-- B29. How many customers purchased from ALL categories
SELECT COUNT(*) AS CustomersAllCategories
FROM (SELECT EmailId FROM vw_Purchases GROUP BY EmailId HAVING COUNT(DISTINCT CategoryId) = (SELECT COUNT(*) FROM Categories)) t;

-- B30. Retention rate.  (a) classic: customers active in the year before the last 12 months who bought again in the last 12 months;
--      (b) data spans only ~1 year, so also: customers of the first half who bought again in the second half.
SELECT COUNT(DISTINCT CASE WHEN DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 12 MONTH) THEN EmailId END) AS ActiveLast12M,
       COUNT(DISTINCT CASE WHEN DateOfPurchase <= DATE_SUB(@ref_date, INTERVAL 12 MONTH)
                            AND DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 24 MONTH) THEN EmailId END) AS ActivePrior12M
FROM PurchaseDetails;
SET @mid_date = DATE_ADD(@min_date, INTERVAL DATEDIFF(@ref_date, @min_date) DIV 2 DAY);
SELECT COUNT(DISTINCT a.EmailId) AS FirstHalfCustomers, COUNT(DISTINCT b.EmailId) AS AlsoBoughtInSecondHalf,
       ROUND(100 * COUNT(DISTINCT b.EmailId) / COUNT(DISTINCT a.EmailId), 2) AS RetentionRatePct
FROM PurchaseDetails a
LEFT JOIN PurchaseDetails b ON b.EmailId = a.EmailId AND b.DateOfPurchase > @mid_date
WHERE a.DateOfPurchase <= @mid_date;

-- B31. Percentage of purchases by male vs female customers
SELECT u.Gender, COUNT(*) AS Purchases, ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS PctPurchases
FROM PurchaseDetails pd JOIN Users u ON u.EmailId = pd.EmailId GROUP BY u.Gender;

-- B32. Revenue breakdown by category and gender
SELECT v.CategoryName, u.Gender, SUM(v.PurchaseValue) AS Revenue
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId GROUP BY v.CategoryName, u.Gender ORDER BY v.CategoryName, u.Gender;

-- B33. Return rate - not recorded.  Proxy "low sales after initial purchase": products sold only in the first half of the data and never again
SELECT ProductId, ProductName, SUM(QuantityPurchased) AS Units, MAX(DateOfPurchase) AS LastSale
FROM vw_Purchases GROUP BY ProductId, ProductName
HAVING MAX(DateOfPurchase) <= DATE_ADD(@min_date, INTERVAL DATEDIFF(@ref_date, @min_date) DIV 2 DAY)
ORDER BY LastSale;
SELECT * FROM vw_MissingDataCheck;     -- 0 = no return/rating/discount/etc. columns exist

-- B34. Average product price by category over time (prices are static, so this shows the monthly price MIX of items sold)
SELECT CategoryName, YearMonthKey AS YearMonth, ROUND(AVG(Price), 2) AS AvgListPriceOfItemsSold
FROM vw_Purchases GROUP BY CategoryName, YearMonthKey ORDER BY CategoryName, YearMonth;

-- B35. Customers with the highest average purchase value
SELECT EmailId, ROUND(AvgPurchaseValue, 2) AS AvgPurchaseValue FROM vw_UserSpend ORDER BY AvgPurchaseValue DESC LIMIT 10;

-- B36. Card-expiry patterns relative to purchase dates (per user card vs the user's purchase window)
SELECT c.EmailId, c.CardNumber, c.ExpiryDate, s.FirstPurchase, s.LastPurchase,
       DATEDIFF(c.ExpiryDate, s.LastPurchase) AS DaysFromLastPurchaseToExpiry,
       CASE WHEN c.ExpiryDate < s.FirstPurchase THEN 'Expired before first purchase'
            WHEN c.ExpiryDate < s.LastPurchase  THEN 'Expired during purchase window'
            ELSE 'Valid for all purchases' END AS ExpiryPattern
FROM vw_UserCards c JOIN vw_UserSpend s ON s.EmailId = c.EmailId ORDER BY DaysFromLastPurchaseToExpiry;

-- B37. Customers with expired cards (as of today) who made recent purchases (last 6 months of data)
SELECT DISTINCT c.EmailId, c.CardNumber, c.ExpiryDate, s.LastPurchase
FROM vw_UserCards c JOIN vw_UserSpend s ON s.EmailId = c.EmailId
WHERE c.ExpiryDate < @today AND s.LastPurchase > DATE_SUB(@ref_date, INTERVAL 6 MONTH);

-- B38. Longest gap between two purchases by any customer (top 5)
WITH g AS (
    SELECT EmailId, DateOfPurchase, LAG(DateOfPurchase) OVER (PARTITION BY EmailId ORDER BY DateOfPurchase) AS PrevDate FROM PurchaseDetails
)
SELECT EmailId, PrevDate, DateOfPurchase, DATEDIFF(DateOfPurchase, PrevDate) AS GapDays
FROM g WHERE PrevDate IS NOT NULL ORDER BY GapDays DESC LIMIT 5;

-- B39. Product purchased in the largest quantity in a single purchase (ties kept)
SELECT PurchaseId, EmailId, ProductId, ProductName, QuantityPurchased
FROM vw_Purchases WHERE QuantityPurchased = (SELECT MAX(QuantityPurchased) FROM PurchaseDetails) ORDER BY ProductId;

-- B40. Average revenue per purchase
SELECT ROUND(AVG(PurchaseValue), 2) AS AvgRevenuePerPurchase, COUNT(*) AS Purchases, SUM(PurchaseValue) AS TotalRevenue FROM vw_Purchases;

-- B41. Distribution of products purchased by customer age group
SELECT a.AgeGroup, v.ProductId, v.ProductName, SUM(v.QuantityPurchased) AS TotalQuantity
FROM vw_Purchases v JOIN vw_UserAge a ON a.EmailId = v.EmailId
GROUP BY a.AgeGroup, v.ProductId, v.ProductName ORDER BY a.AgeGroup, TotalQuantity DESC;

-- B42. Most popular category among new customers (first purchase in the last 6 months of data)
SELECT v.CategoryName, COUNT(DISTINCT v.EmailId) AS NewCustomers, SUM(v.QuantityPurchased) AS Units
FROM vw_Purchases v
WHERE v.EmailId IN (SELECT EmailId FROM PurchaseDetails GROUP BY EmailId HAVING MIN(DateOfPurchase) > DATE_SUB(@ref_date, INTERVAL 6 MONTH))
GROUP BY v.CategoryName ORDER BY NewCustomers DESC, Units DESC;

-- B43. Customers who purchased across the most different years
SELECT EmailId, COUNT(DISTINCT YEAR(DateOfPurchase)) AS YearsPurchased, SUM(QuantityPurchased) AS TotalQuantity
FROM PurchaseDetails GROUP BY EmailId ORDER BY YearsPurchased DESC, TotalQuantity DESC LIMIT 10;

-- B44. Day of week with the highest revenue (full ranking)
SELECT DAYNAME(DateOfPurchase) AS DayOfWeek_, SUM(PurchaseValue) AS Revenue
FROM vw_Purchases GROUP BY DAYNAME(DateOfPurchase), DAYOFWEEK(DateOfPurchase) ORDER BY Revenue DESC;

-- B45. Customers with purchases in consecutive months (fixed: uses distinct months, not purchase lines)
WITH m AS (SELECT DISTINCT EmailId, DATE_FORMAT(DateOfPurchase, '%Y%m') + 0 AS ym FROM PurchaseDetails),
l AS (SELECT EmailId, ym, LAG(ym) OVER (PARTITION BY EmailId ORDER BY ym) AS PrevYm FROM m)
SELECT EmailId, COUNT(*) AS ConsecutiveMonthPairs FROM l WHERE PrevYm IS NOT NULL AND PERIOD_DIFF(ym, PrevYm) = 1
GROUP BY EmailId ORDER BY ConsecutiveMonthPairs DESC;

-- B46. Average product price purchased by role (Admin vs Customer)
SELECT r.RoleName, ROUND(AVG(v.Price), 2) AS AvgPricePurchased, COUNT(*) AS Purchases
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId JOIN Roles r ON r.RoleId = u.RoleId GROUP BY r.RoleName;

-- B47. Quantity available vs quantity sold for top-selling products
SELECT p.ProductId, p.ProductName, p.QuantityAvailable, SUM(pd.QuantityPurchased) AS QuantitySold,
       ROUND(100 * SUM(pd.QuantityPurchased) / (p.QuantityAvailable + SUM(pd.QuantityPurchased)), 1) AS PctOfStockSold
FROM Products p JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.QuantityAvailable ORDER BY QuantitySold DESC LIMIT 10;

-- B48. Share of revenue from the top 10 customers (list + total)
SELECT EmailId, TotalSpend, ROUND(100 * TotalSpend / SUM(TotalSpend) OVER (), 2) AS PctOfRevenue
FROM vw_UserSpend ORDER BY TotalSpend DESC LIMIT 10;
SELECT ROUND(100 * SUM(TotalSpend) / (SELECT SUM(TotalSpend) FROM vw_UserSpend), 2) AS Top10CustomersPctOfRevenue
FROM (SELECT TotalSpend FROM vw_UserSpend ORDER BY TotalSpend DESC LIMIT 10) t;

-- B49. Customers with multiple cards registered
SELECT COUNT(*) AS CustomersWithMultipleCards FROM (SELECT EmailId FROM vw_UserCards GROUP BY EmailId HAVING COUNT(*) > 1) t;
SELECT NameOnCard, COUNT(*) AS CardCount FROM CardDetails GROUP BY NameOnCard HAVING COUNT(*) > 1;

-- B50. Average balance on cards of users who made purchases
SELECT ROUND(AVG(c.Balance), 2) AS AvgBalanceOfBuyersCards, COUNT(*) AS Cards
FROM vw_UserCards c WHERE c.EmailId IN (SELECT DISTINCT EmailId FROM PurchaseDetails);

-- B51. Products trending upwards: units in the last 3 months vs the 3 months before
SELECT ProductId, ProductName,
       SUM(CASE WHEN DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 3 MONTH) THEN QuantityPurchased ELSE 0 END) AS Last3M,
       SUM(CASE WHEN DateOfPurchase <= DATE_SUB(@ref_date, INTERVAL 3 MONTH)
                 AND DateOfPurchase >  DATE_SUB(@ref_date, INTERVAL 6 MONTH) THEN QuantityPurchased ELSE 0 END) AS Prior3M
FROM vw_Purchases GROUP BY ProductId, ProductName
HAVING Last3M > Prior3M ORDER BY Last3M - Prior3M DESC;

-- B52. Purchase quantities by product ID (all products, unsold = 0)
SELECT p.ProductId, p.ProductName, COALESCE(SUM(pd.QuantityPurchased), 0) AS TotalQuantityPurchased
FROM Products p LEFT JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName ORDER BY TotalQuantityPurchased DESC, p.ProductId;

-- B53. Average age of customers purchasing in each category
SELECT v.CategoryName, ROUND(AVG(a.Age), 1) AS AvgCustomerAge, COUNT(*) AS Purchases
FROM vw_Purchases v JOIN vw_UserAge a ON a.EmailId = v.EmailId GROUP BY v.CategoryName ORDER BY AvgCustomerAge;

-- B54. Percentage of customers who purchased only once (of purchasers and of all users)
SELECT SUM(Purchases = 1) AS OneTimeBuyers, ROUND(100 * SUM(Purchases = 1) / COUNT(*), 2) AS PctOfPurchasers,
       ROUND(100 * SUM(Purchases = 1) / (SELECT COUNT(*) FROM Users), 2) AS PctOfAllUsers
FROM vw_UserSpend;

-- B55. Revenue from products priced above the average catalogue price
SELECT SUM(PurchaseValue) AS RevenueAboveAvgPrice,
       ROUND(100 * SUM(PurchaseValue) / (SELECT SUM(PurchaseValue) FROM vw_Purchases), 2) AS PctOfTotal
FROM vw_Purchases WHERE Price > (SELECT AVG(Price) FROM Products);

-- B56. Customers who purchased from the 'Motors' category
SELECT EmailId, COUNT(*) AS MotorsPurchases, SUM(QuantityPurchased) AS Units, SUM(PurchaseValue) AS MotorsSpend
FROM vw_Purchases WHERE CategoryName = 'Motors' GROUP BY EmailId ORDER BY MotorsSpend DESC;

-- B57. Products with zero quantity available that were sold (recently = last 6 months of data)
SELECT p.ProductId, p.ProductName, MAX(pd.DateOfPurchase) AS LastSale
FROM Products p JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
WHERE p.QuantityAvailable = 0 AND pd.DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 6 MONTH)
GROUP BY p.ProductId, p.ProductName;       -- empty: no product is at zero stock

-- B58. Total revenue per category divided by gender (share within category)
SELECT v.CategoryName, u.Gender, SUM(v.PurchaseValue) AS Revenue,
       ROUND(100 * SUM(v.PurchaseValue) / SUM(SUM(v.PurchaseValue)) OVER (PARTITION BY v.CategoryName), 1) AS PctOfCategory
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId GROUP BY v.CategoryName, u.Gender ORDER BY v.CategoryName, u.Gender;

-- B59. Average quantity ordered per purchase across categories
SELECT CategoryName, ROUND(AVG(QuantityPurchased), 3) AS AvgQuantityPerPurchase, COUNT(*) AS Purchases
FROM vw_Purchases GROUP BY CategoryName ORDER BY AvgQuantityPerPurchase DESC;

-- B60. Customers with the highest number of purchased units (and purchase count)
SELECT EmailId, Units AS TotalQuantity, Purchases FROM vw_UserSpend ORDER BY Units DESC, Purchases DESC LIMIT 10;

-- B61. How often do customers switch card types?  No card on purchases; proxy = customers holding more than one card TYPE
SELECT EmailId, COUNT(DISTINCT CardType) AS CardTypesHeld, GROUP_CONCAT(DISTINCT CardType) AS Types
FROM vw_UserCards GROUP BY EmailId HAVING COUNT(DISTINCT CardType) > 1;

-- B62. Time of year with the highest purchase volumes (month and quarter)
SELECT MONTH(DateOfPurchase) AS MonthNo, MONTHNAME(DateOfPurchase) AS MonthName_, COUNT(*) AS PurchaseCount, SUM(QuantityPurchased) AS Units
FROM PurchaseDetails GROUP BY MONTH(DateOfPurchase), MONTHNAME(DateOfPurchase) ORDER BY PurchaseCount DESC;
SELECT QUARTER(DateOfPurchase) AS Quarter_, COUNT(*) AS PurchaseCount FROM PurchaseDetails GROUP BY QUARTER(DateOfPurchase) ORDER BY PurchaseCount DESC;

-- B63. Geographic locations with the highest customer density (address keyword = locality)
SELECT Locality, COUNT(*) AS CustomerCount FROM vw_UserLocality GROUP BY Locality ORDER BY CustomerCount DESC, Locality LIMIT 10;

-- B64. Purchase frequency vs customer age and gender
SELECT a.Gender, a.AgeGroup, COUNT(DISTINCT a.EmailId) AS Users, COUNT(pd.PurchaseId) AS Purchases,
       ROUND(COUNT(pd.PurchaseId) / COUNT(DISTINCT a.EmailId), 2) AS PurchasesPerUser
FROM vw_UserAge a LEFT JOIN PurchaseDetails pd ON pd.EmailId = a.EmailId
GROUP BY a.Gender, a.AgeGroup ORDER BY a.Gender, a.AgeGroup;

-- B65. Most common product combinations purchased together (same user, same day) - top 10
SELECT ProductA, ProductB, COUNT(*) AS TimesTogether FROM vw_ProductPairs GROUP BY ProductA, ProductB
ORDER BY TimesTogether DESC, ProductA, ProductB LIMIT 10;

-- B66. Customers with purchases made beyond (after) the expiry date of their card
SELECT c.EmailId, c.CardNumber, c.ExpiryDate, COUNT(*) AS PurchasesAfterExpiry, MAX(pd.DateOfPurchase) AS LastPurchase
FROM vw_UserCards c JOIN PurchaseDetails pd ON pd.EmailId = c.EmailId
WHERE pd.DateOfPurchase > c.ExpiryDate GROUP BY c.EmailId, c.CardNumber, c.ExpiryDate;

-- B67. Average balance remaining on cards after purchases (assumes the user's total spend is charged to the card balance)
SELECT ROUND(AVG(RemainingBalance), 2) AS AvgEstimatedRemainingBalance, SUM(RemainingBalance < 0) AS UsersOverBalance
FROM (SELECT s.EmailId, SUM(c.Balance) - s.TotalSpend AS RemainingBalance
      FROM vw_UserSpend s JOIN vw_UserCards c ON c.EmailId = s.EmailId GROUP BY s.EmailId, s.TotalSpend) t;

-- B68. Customers whose card balance is below a threshold (edit @low_balance)
SET @low_balance = 5000;
SELECT COUNT(DISTINCT EmailId) AS CustomersWithLowBalance FROM vw_UserCards WHERE Balance < @low_balance;
SELECT CardNumber, NameOnCard, Balance FROM CardDetails WHERE Balance < @low_balance ORDER BY Balance;

-- B69. Average purchase value per category for ADMIN-role users
SELECT v.CategoryName, ROUND(AVG(v.PurchaseValue), 2) AS AvgPurchaseValue, COUNT(*) AS Purchases
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId JOIN Roles r ON r.RoleId = u.RoleId
WHERE r.RoleName = 'Admin' GROUP BY v.CategoryName;      -- empty: admins have no purchases

-- B70. Products with increased quantity despite sales (possible restock) - needs history; proxy: stock above sold volume for products with sales
SELECT p.ProductId, p.ProductName, p.QuantityAvailable, SUM(pd.QuantityPurchased) AS UnitsSold
FROM Products p JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.QuantityAvailable ORDER BY p.QuantityAvailable DESC LIMIT 10;

-- B71. Total quantity purchased per category over time
SELECT CategoryName, YearMonthKey AS YearMonth, SUM(QuantityPurchased) AS TotalQuantity
FROM vw_Purchases GROUP BY CategoryName, YearMonthKey ORDER BY CategoryName, YearMonth;

-- B72. Average discount.  No discount/price-paid column exists: purchase price == list price, so inferred discount = 0
SELECT 0 AS InferredAvgDiscount, 'Purchases store only product id + quantity; revenue is computed at list price' AS Note;
SELECT * FROM vw_MissingDataCheck;

-- B73. Customers who have not purchased for over a year (relative to last recorded purchase and to today)
SELECT u.EmailId, MAX(pd.DateOfPurchase) AS LastPurchase,
       CASE WHEN MAX(pd.DateOfPurchase) IS NULL THEN 'Never purchased' ELSE 'Purchased, but > 1 year ago' END AS Status_
FROM Users u LEFT JOIN PurchaseDetails pd ON pd.EmailId = u.EmailId
GROUP BY u.EmailId
HAVING MAX(pd.DateOfPurchase) IS NULL OR MAX(pd.DateOfPurchase) < DATE_SUB(@ref_date, INTERVAL 1 YEAR);
SELECT COUNT(*) AS UsersInactiveOver1YearFromToday
FROM Users u WHERE NOT EXISTS (SELECT 1 FROM PurchaseDetails pd WHERE pd.EmailId = u.EmailId AND pd.DateOfPurchase >= DATE_SUB(@today, INTERVAL 1 YEAR));

-- B74. Category purchase trends through the year (calendar month and quarter)
SELECT CategoryName, MONTH(DateOfPurchase) AS MonthNo, SUM(QuantityPurchased) AS TotalQuantity
FROM vw_Purchases GROUP BY CategoryName, MONTH(DateOfPurchase) ORDER BY CategoryName, MonthNo;
SELECT CategoryName, QUARTER(DateOfPurchase) AS Quarter_, SUM(PurchaseValue) AS Revenue
FROM vw_Purchases GROUP BY CategoryName, QUARTER(DateOfPurchase) ORDER BY CategoryName, Quarter_;

-- B75. Average number of purchases per customer by gender
SELECT u.Gender, ROUND(AVG(s.Purchases), 2) AS AvgPurchasesPerBuyer, COUNT(*) AS Buyers
FROM vw_UserSpend s JOIN Users u ON u.EmailId = s.EmailId GROUP BY u.Gender;

-- B76. Products purchased only once
SELECT p.ProductId, p.ProductName, SUM(v.QuantityPurchased) AS UnitsInThatPurchase
FROM Products p JOIN vw_Purchases v ON v.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName HAVING COUNT(*) = 1;

-- B77. Products with the most consistent sales: months with sales in the last 6 months + coefficient of variation
SELECT ProductId, ProductName, COUNT(DISTINCT YearMonthKey) AS ActiveMonthsLast6,
       ROUND(STDDEV_POP(QuantityPurchased) / AVG(QuantityPurchased), 3) AS QtyCV
FROM vw_Purchases WHERE DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 6 MONTH)
GROUP BY ProductId, ProductName ORDER BY ActiveMonthsLast6 DESC, QtyCV;

-- B78. Total revenue per customer segmented by role and gender
SELECT r.RoleName, u.Gender, COUNT(DISTINCT v.EmailId) AS Customers, SUM(v.PurchaseValue) AS Revenue,
       ROUND(SUM(v.PurchaseValue) / COUNT(DISTINCT v.EmailId), 2) AS RevenuePerCustomer
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId JOIN Roles r ON r.RoleId = u.RoleId
GROUP BY r.RoleName, u.Gender;

-- B79. Customers with multiple cards and their preferred card types
SELECT EmailId, COUNT(*) AS CardCount, GROUP_CONCAT(CardType) AS CardTypes FROM vw_UserCards GROUP BY EmailId HAVING COUNT(*) > 1;
SELECT TRIM(CardType) AS CardType, COUNT(*) AS CardsHeldByMultiCardUsers
FROM vw_UserCards WHERE EmailId IN (SELECT EmailId FROM vw_UserCards GROUP BY EmailId HAVING COUNT(*) > 1) GROUP BY TRIM(CardType);

-- B80. Average purchase quantity vs card balance (balance bands of the buyer's cards)
SELECT CASE WHEN b.Bal < 5000 THEN '1) < 5,000' WHEN b.Bal < 15000 THEN '2) 5,000-14,999' ELSE '3) >= 15,000' END AS BalanceBand,
       COUNT(*) AS Purchases, ROUND(AVG(pd.QuantityPurchased), 3) AS AvgQty
FROM PurchaseDetails pd JOIN (SELECT EmailId, SUM(Balance) AS Bal FROM vw_UserCards GROUP BY EmailId) b ON b.EmailId = pd.EmailId
GROUP BY BalanceBand ORDER BY BalanceBand;

-- B81. Percentage of purchases made when the owner's card expires within 3 months of the purchase
SELECT ROUND(100 * AVG(NearExpiry), 2) AS PctPurchasesNearExpiry
FROM (SELECT pd.PurchaseId,
             MAX(CASE WHEN c.ExpiryDate BETWEEN pd.DateOfPurchase AND DATE_ADD(pd.DateOfPurchase, INTERVAL 3 MONTH) THEN 1 ELSE 0 END) AS NearExpiry
      FROM PurchaseDetails pd LEFT JOIN vw_UserCards c ON c.EmailId = pd.EmailId
      GROUP BY pd.PurchaseId) t;

-- B82. Categories with the highest average revenue per purchase
SELECT CategoryName, ROUND(AVG(PurchaseValue), 2) AS AvgRevenue FROM vw_Purchases GROUP BY CategoryName ORDER BY AvgRevenue DESC;

-- B83. Average age of customers by card type ("premium" is not defined in the data: highest-average-balance type is flagged)
SELECT c.CardType, ROUND(AVG(a.Age), 1) AS AvgAge, COUNT(DISTINCT c.EmailId) AS Customers, ROUND(AVG(c.Balance), 0) AS AvgBalance,
       CASE WHEN AVG(c.Balance) = MAX(AVG(c.Balance)) OVER () THEN 'highest balance (premium proxy)' ELSE '' END AS Flag
FROM vw_UserCards c JOIN vw_UserAge a ON a.EmailId = c.EmailId GROUP BY c.CardType;

-- B84. Time between registration and first purchase.  No registration date: proxy = days from the data start to first purchase
SELECT EmailId, FirstPurchase, DATEDIFF(FirstPurchase, @min_date) AS DaysFromDataStartToFirstPurchase FROM vw_UserSpend ORDER BY FirstPurchase;

-- B85. Distribution of purchases by geographic location parsed from the address
SELECT l.Locality, COUNT(DISTINCT l.EmailId) AS Customers, COUNT(*) AS Purchases, SUM(v.PurchaseValue) AS Revenue
FROM vw_Purchases v JOIN vw_UserLocality l ON l.EmailId = v.EmailId GROUP BY l.Locality ORDER BY Purchases DESC;

-- B86. Suspicious purchase patterns: unit volume in the top 25% of buyers while total card balance is in the lowest half
WITH t AS (
    SELECT s.EmailId, s.Units, s.TotalSpend, COALESCE(SUM(c.Balance), 0) AS Bal
    FROM vw_UserSpend s LEFT JOIN vw_UserCards c ON c.EmailId = s.EmailId GROUP BY s.EmailId, s.Units, s.TotalSpend
),
r AS (SELECT *, NTILE(4) OVER (ORDER BY Units DESC) AS UnitQ, NTILE(2) OVER (ORDER BY Bal) AS BalHalf FROM t)
SELECT EmailId, Units, TotalSpend, Bal AS TotalCardBalance, TotalSpend - Bal AS SpendMinusBalance
FROM r WHERE UnitQ = 1 AND BalHalf = 1 ORDER BY SpendMinusBalance DESC;

-- B87. Categories with the lowest returns/complaints - not recorded; proxy: lowest repeat-customer share per category cannot be inferred -> show data check
SELECT * FROM vw_MissingDataCheck;

-- B88. Trends in product pricing over time by category (prices static -> min/avg/max list price per category)
SELECT c.CategoryName, MIN(p.Price) AS MinPrice, ROUND(AVG(p.Price), 2) AS AvgPrice, MAX(p.Price) AS MaxPrice, COUNT(*) AS Products
FROM Products p JOIN Categories c ON c.CategoryId = p.CategoryId GROUP BY c.CategoryName;

-- B89. Top 5 highest-spending customers in the last year of data
SELECT EmailId, SUM(PurchaseValue) AS TotalSpent
FROM vw_Purchases WHERE DateOfPurchase > DATE_SUB(@ref_date, INTERVAL 1 YEAR) GROUP BY EmailId ORDER BY TotalSpent DESC LIMIT 5;

-- B90. Weekend vs weekday purchases (MySQL DAYOFWEEK: 1 = Sunday, 7 = Saturday)
SELECT CASE WHEN DAYOFWEEK(DateOfPurchase) IN (1, 7) THEN 'Weekend' ELSE 'Weekday' END AS DayType,
       COUNT(*) AS PurchaseCount, SUM(PurchaseValue) AS Revenue,
       ROUND(COUNT(*) / COUNT(DISTINCT DateOfPurchase), 2) AS PurchasesPerActiveDay
FROM vw_Purchases GROUP BY DayType;

-- B91. Percentage of purchases from clearance/discounted stock.  No such data; the check below proves it
SELECT * FROM vw_MissingDataCheck;

-- B92. Customers who have not updated card details after expiry (all their cards are expired as of today)
SELECT EmailId, COUNT(*) AS Cards, MAX(ExpiryDate) AS LatestExpiry
FROM vw_UserCards GROUP BY EmailId HAVING MAX(ExpiryDate) < @today ORDER BY LatestExpiry;

-- B93. Percentage breakdown of purchase volume by customer age group
SELECT a.AgeGroup, COUNT(*) AS Purchases, SUM(pd.QuantityPurchased) AS Units,
       ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (), 2) AS PctOfPurchases,
       ROUND(100 * SUM(pd.QuantityPurchased) / SUM(SUM(pd.QuantityPurchased)) OVER (), 2) AS PctOfUnits
FROM PurchaseDetails pd JOIN vw_UserAge a ON a.EmailId = pd.EmailId GROUP BY a.AgeGroup ORDER BY a.AgeGroup;

-- B94. Top 10 products by average rating.  No ratings; proxy for satisfaction = repeat-purchase rate (buyers who bought it >1 time)
SELECT ProductId, ProductName, COUNT(DISTINCT EmailId) AS Buyers,
       COUNT(DISTINCT CASE WHEN c > 1 THEN EmailId END) AS RepeatBuyers
FROM (SELECT ProductId, ProductName, EmailId, COUNT(*) OVER (PARTITION BY ProductId, EmailId) AS c FROM vw_Purchases) x
GROUP BY ProductId, ProductName ORDER BY RepeatBuyers DESC, Buyers DESC LIMIT 10;

-- B95. Influence of category on purchase quantity and frequency
SELECT CategoryName, ROUND(AVG(QuantityPurchased), 3) AS AvgQuantity, COUNT(*) AS PurchaseLines,
       COUNT(DISTINCT EmailId) AS DistinctBuyers, ROUND(COUNT(*) / COUNT(DISTINCT EmailId), 2) AS PurchasesPerBuyer
FROM vw_Purchases GROUP BY CategoryName ORDER BY PurchaseLines DESC;

-- B96. Percentage of revenue from repeat customers
SELECT ROUND(100 * SUM(CASE WHEN Purchases > 1 THEN TotalSpend ELSE 0 END) / SUM(TotalSpend), 2) AS RevenueFromRepeatCustomersPct
FROM vw_UserSpend;

-- B97. Relationship between gender and category preferences (share of each gender's purchases)
SELECT u.Gender, v.CategoryName, COUNT(*) AS PurchaseCount,
       ROUND(100 * COUNT(*) / SUM(COUNT(*)) OVER (PARTITION BY u.Gender), 1) AS PctOfGenderPurchases
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId GROUP BY u.Gender, v.CategoryName ORDER BY u.Gender, PurchaseCount DESC;

-- B98. How card balance influences purchase quantity (Pearson r per buyer: total card balance vs units)
WITH t AS (SELECT s.EmailId, s.Units, SUM(c.Balance) AS Bal FROM vw_UserSpend s JOIN vw_UserCards c ON c.EmailId = s.EmailId GROUP BY s.EmailId, s.Units)
SELECT COUNT(*) AS Buyers, ROUND((AVG(Units * Bal) - AVG(Units) * AVG(Bal)) / (STDDEV_POP(Units) * STDDEV_POP(Bal)), 4) AS PearsonR_BalanceVsUnits FROM t;

-- B99. Average purchase value for customers with multiple delivery addresses
--      (schema stores ONE address per user; multiple addresses are packed into one field separated by ';')
SELECT CASE WHEN u.Address LIKE '%;%' THEN 'Multiple addresses (;)' ELSE 'Single address' END AS AddressType,
       COUNT(DISTINCT u.EmailId) AS Customers, ROUND(AVG(v.PurchaseValue), 2) AS AvgPurchaseValue
FROM Users u JOIN vw_Purchases v ON v.EmailId = u.EmailId GROUP BY AddressType;
SELECT EmailId, Address FROM Users WHERE Address LIKE '%;%';

-- B100. Suggestions to improve sales from purchase and card-usage trends: supporting evidence queries
--  (1) Where does revenue come from?  -> double down on high-value categories
SELECT CategoryName, SUM(PurchaseValue) AS Revenue, ROUND(100 * SUM(PurchaseValue) / SUM(SUM(PurchaseValue)) OVER (), 1) AS Pct
FROM vw_Purchases GROUP BY CategoryName ORDER BY Revenue DESC;
--  (2) Fast sellers with thin stock -> restock first
SELECT p.ProductId, p.ProductName, p.QuantityAvailable, SUM(pd.QuantityPurchased) AS UnitsSold
FROM Products p JOIN PurchaseDetails pd ON pd.ProductId = p.ProductId
GROUP BY p.ProductId, p.ProductName, p.QuantityAvailable ORDER BY UnitsSold DESC, p.QuantityAvailable LIMIT 10;
--  (3) Catalogue items that never sell -> discount / bundle / delist
SELECT COUNT(*) AS ProductsNeverSold, SUM(Price * QuantityAvailable) AS CapitalTiedUp
FROM Products p WHERE NOT EXISTS (SELECT 1 FROM PurchaseDetails pd WHERE pd.ProductId = p.ProductId);
--  (4) Registered users who never bought -> activation campaign
SELECT COUNT(*) AS UsersNeverBought FROM Users u WHERE NOT EXISTS (SELECT 1 FROM PurchaseDetails pd WHERE pd.EmailId = u.EmailId);
--  (5) Buyers whose cards have expired -> prompt to update payment method (prevents failed payments)
SELECT s.EmailId, MAX(c.ExpiryDate) AS LatestCardExpiry
FROM vw_UserSpend s JOIN vw_UserCards c ON c.EmailId = s.EmailId GROUP BY s.EmailId HAVING MAX(c.ExpiryDate) < @today;
--  (6) Repeat customers carry most revenue -> loyalty / retention programme
SELECT ROUND(100 * SUM(CASE WHEN Purchases > 1 THEN TotalSpend ELSE 0 END) / SUM(TotalSpend), 1) AS RepeatCustomerRevenuePct FROM vw_UserSpend;
/* Written recommendations
   1. Capture the card used on each purchase (add CardNumber to PurchaseDetails) and a basket/order id.
   2. Fix data quality: e-mail typo 'igmail.com', padded CardType values, duplicate card name 'Maria'.
   3. Restock fast-selling low-stock products and run promotions on never-sold stock.
   4. Re-engage never-bought / dormant users; segment by frequency x spend (A85/A96) for targeted offers.
   5. Prompt customers with expired cards to refresh payment details; watch balances vs order value.
   6. Add registration date, price history, discount, returns and ratings columns to unlock trend/quality analysis. */


/* ##########################################################################
   PART C  -  PROJECT REPORT: validation of the report's "Key Trends" claims
   ########################################################################## */

-- C1. "Motors products, though limited in quantity, contribute very high revenue per unit"
SELECT CategoryName, SUM(QuantityPurchased) AS Units, SUM(PurchaseValue) AS Revenue, ROUND(SUM(PurchaseValue) / SUM(QuantityPurchased), 2) AS RevenuePerUnit
FROM vw_Purchases GROUP BY CategoryName ORDER BY RevenuePerUnit DESC;

-- C2. "Female and male customers show distinct purchasing patterns"
SELECT u.Gender, COUNT(*) AS Purchases, SUM(v.QuantityPurchased) AS Units, ROUND(AVG(v.QuantityPurchased), 2) AS AvgQty, SUM(v.PurchaseValue) AS Revenue
FROM vw_Purchases v JOIN Users u ON u.EmailId = v.EmailId GROUP BY u.Gender;

-- C3. "Repeat customers constitute a significant percentage of total purchases"
SELECT ROUND(100 * SUM(CASE WHEN Purchases > 1 THEN Purchases ELSE 0 END) / SUM(Purchases), 2) AS PctOfPurchasesFromRepeatCustomers FROM vw_UserSpend;

-- C4. "Card type distribution ..."
SELECT TRIM(CardType) AS CardType, COUNT(*) AS Cards, ROUND(AVG(Balance), 0) AS AvgBalance FROM CardDetails GROUP BY TRIM(CardType);

-- C5. "Seasonal trends - purchase peaks vary by month and day of week"
SELECT DATE_FORMAT(DateOfPurchase, '%Y-%m') AS Month_, COUNT(*) AS Purchases FROM PurchaseDetails GROUP BY 1 ORDER BY 1;
SELECT DAYNAME(DateOfPurchase) AS Weekday_, COUNT(*) AS Purchases FROM PurchaseDetails GROUP BY DAYNAME(DateOfPurchase), DAYOFWEEK(DateOfPurchase) ORDER BY Purchases DESC;

-- C6. "Inventory analysis identifies low-stock products requiring replenishment"
SELECT ProductId, ProductName, QuantityAvailable FROM Products WHERE QuantityAvailable <= 20 ORDER BY QuantityAvailable, ProductId;

-- C7. "Some customers make purchases beyond card expiry"
SELECT COUNT(DISTINCT c.EmailId) AS CustomersWithPurchasesAfterCardExpiry
FROM vw_UserCards c JOIN PurchaseDetails pd ON pd.EmailId = c.EmailId WHERE pd.DateOfPurchase > c.ExpiryDate;

-- ===================== END OF ANALYSIS SCRIPT ==============================
