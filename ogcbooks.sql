-- Create OGCBooks database with PK & FKs, remove useless whitespace in values

--USE master;ALTER DATABASE OGCBooks2021 SET SINGLE_USER WITH ROLLBACK IMMEDIATE;DROP DATABASE OGCBooks2021;

CREATE DATABASE OGCBooks2021;

USE OGCBooks2021;

CREATE TABLE Customers(
  custnum varchar (5) NOT NULL
  referredby varchar (5) NULL
  custname varchar (30) NULL
  address varchar (25) NULL
  city varchar (20) NULL
  state varchar (2) NULL
  zipcode varchar (12) NULL
  repid varchar (3) NULL
  PRIMARY KEY(custnum)
);
CREATE TABLE Slspers(
  repid varchar (3) NOT NULL
  fname varchar (10) NULL
  lname varchar (20) NULL
  commrate float NULL
  PRIMARY KEY(repid)  
);
CREATE TABLE Titles(
  partnum varchar (5) NOT NULL
  bktitle varchar (40) NULL
  devcost money NULL
  slprice money NULL
  pubdate date NULL
  PRIMARY KEY(partnum)  
);
CREATE TABLE Sales(
  ordnum varchar (5) NOT NULL
  sldate date NULL
  qty int NULL
  custnum varchar (5) NULL
  partnum varchar (5) NULL
  repid varchar (3) NULL
  PRIMARY KEY(ordnum)  
);
CREATE TABLE Obsolete_Titles(
  partnum varchar (5) NOT NULL
  bktitle varchar (40) NULL
  devcost money NULL
  slprice money NULL
  pubdate date NULL
  PRIMARY KEY(partnum)
  );
CREATE TABLE Potential_Customers(
  custnum varchar (5) NOT NULL
  referredby varchar (5) NULL
  custname varchar (30) NULL
  address varchar (25) NULL
  city varchar (20) NULL
  state varchar (2) NULL
  zipcode varchar (12) NULL
  repid varchar (3) NULL
  PRIMARY KEY(custnum)  
);
ALTER TABLE Sales
ADD FOREIGN KEY (custnum) REFERENCES Customers(custnum);
ALTER TABLE Sales
ADD FOREIGN KEY (repid) REFERENCES Slspers(repid);
ALTER TABLE Sales
ADD FOREIGN KEY (partnum) REFERENCES Titles(partnum);

INSERT INTO  Customers VALUES (20042, 20555, 'OGC Music', '1149 Blossom Road', 'Rochester', 'NY', '14610', 'S01')
;INSERT INTO  Customers VALUES (20151, 20330, 'OGC Books', '19 International Dr.', 'Ryebrook', 'NY', '10573', 'S03')
;INSERT INTO  Customers VALUES (20181, 20506, 'e.Quiry', '512 Columbia Road', 'Somerville', 'NJ', '8876', 'E02')
;INSERT INTO  Customers VALUES (20309, 20151, 'OGC Card Shoppe', '981 Connecticut Blvd.', 'East Hartford', 'CT', '6108', 'S01')
;INSERT INTO  Customers VALUES (20330, 99999, 'InfiniTrain', '51 Ulster St.', 'Denver', 'CO', '80237', 'S03')
;INSERT INTO  Customers VALUES (20417, 20506, 'Ristell & Sons Publishing', '99 West 77th St.', 'Edina', 'MN', '55435', 'W01')
;INSERT INTO  Customers VALUES (20437, 99999, 'Cards for All Occasions', '99 South Downing', 'Westchester', 'IL', '60154', 'W02')
;INSERT INTO  Customers VALUES (20482, 20181, 'OGC Kraft Supplies', '2 Kirts Boulevard', 'Troy', 'MI', '48084', 'S02')
;INSERT INTO  Customers VALUES (20493, 20573, 'OGC Drug Store', '7110 Cordero Drive', 'San Francisco', 'CA', '96910', 'N01')
;INSERT INTO  Customers VALUES (20503, 9989, 'Rudison Tech Ltd.', '396 Apache River Ave.', 'Fountain Valley', 'CA', '92708', 'N01')
;INSERT INTO  Customers VALUES (20506, 9989, 'Our Global Music Shop', '51 Windsor Street', 'Cambridge', 'MA', '2139', 'S01')
;INSERT INTO  Customers VALUES (20512, 20437, 'OGC Gardening Galore', '79 Gessner', 'Houston', 'TX', '77024', 'S03')
;INSERT INTO  Customers VALUES (20527, 99999, 'OGC Pet Shoppe', '40 Knox Park Road', 'Lake Zurich', 'IL', '60047', 'W02')
;INSERT INTO  Customers VALUES (20555, 8864, 'OGC Learning Center', '615 Richmond Ave.', 'Houston', 'TX', '77042', 'S02')
;INSERT INTO  Customers VALUES (20557, 99999, 'OGC Pets', '74 Oak St.', 'Buffalo', 'NY', '14053', 'S01')
;INSERT INTO  Customers VALUES (20573, 21516, 'AFR Travel', '5619 114th Ave. N.W.', 'Bellevue', 'WA', '98004', 'E03')
;INSERT INTO  Customers VALUES (21133, 99999, 'AFR Tours', '27 International Dr.', 'Ryebrook', 'NY', '10573', 'S01')
;INSERT INTO  Customers VALUES (21151, 99999, 'OGC School', '12 Harbor Blvd.', 'Santa Ana', 'CA', '92704', 'S03')
;INSERT INTO  Customers VALUES (21160, 20573, 'Kreativity@itsBest', '22 International Dr.', 'Ryebrook', 'NY', '10573', 'W02')
;INSERT INTO  Customers VALUES (21516, 20330, 'Dazzle Florist', '81 114th Ave.', 'Bellevue', 'WA', '98004', 'S01')
;INSERT INTO  Customers VALUES (8802, 9989, 'Dazzle Gardens', '289 Jacoban St.', 'Quebec', 'CA', 'H8R 1C3', 'N02')
;INSERT INTO  Customers VALUES (8864, 99999, 'Jammin Juice Company', '49 West Nash Street', 'Wilson', 'NC', '27893', 'N02')
;INSERT INTO  Customers VALUES (9517, 20506, 'The Corner Bookstore', '36 North Miller Avenue', 'Syracuse', 'NY', '13206', 'E01')
;INSERT INTO  Customers VALUES (9881, 21516, 'Ristell & Rudison Advertising', '2008 Delta Ave.', 'Cincinnati', 'OH', '45208', 'E01')
;INSERT INTO  Customers VALUES (9989, 20573, 'vLearners Inc', '39 Gallimore Dairy Road', 'Greensboro', 'NC', '27409', 'N02')

;INSERT INTO Obsolete_Titles VALUES(39213, 'When Birds Do not Fly', 42562.75, 29.95, '1997-04-07 00:00:00.000')
;INSERT INTO Obsolete_Titles VALUES(39422, 'Hammer and Nails', 35024, 42.5, '1993-09-10 00:00:00.000')
;INSERT INTO Obsolete_Titles VALUES(39778, 'Taking a Walk Alone', 12981.55, 35.95, '1995-03-01 00:00:00.000')
;INSERT INTO Obsolete_Titles VALUES(39779, 'Learning to Diet', 9000, 21.95, '1993-09-15 00:00:00.000')
;INSERT INTO Obsolete_Titles VALUES(39782, 'Wonderful Thoughts and Marvellous Dreams', 11233.75, 25.5, '1990-02-10 00:00:00.000')
;INSERT INTO Obsolete_Titles VALUES(39843, 'Clear Cupboards', 15055.5, 49.95, '1995-08-19 00:00:00.000')
;INSERT INTO Obsolete_Titles VALUES(39905, 'Y2K Why Worry?', 19990, 45, '1996-01-01 00:00:00.000')

;INSERT INTO Potential_Customers VALUES('31001', '31004', 'Janrex, Inc.', '911 Empire Blvd.', 'Cincinnati', 'OH', '45208', 'E01')
;INSERT INTO Potential_Customers VALUES('31002', null, 'Tri-Mark Properties', '3 Park Ave.', 'Wilson', 'NC', '27893', 'N02')
;INSERT INTO Potential_Customers VALUES('31003', '31002', 'Hexa Web Hosting Services', '15 Main St.', 'Syracuse', 'NY', '13206', 'E01')
;INSERT INTO Potential_Customers VALUES('31004', '31002', 'OGC Garden Shop', '224 Phillips Ave.', 'Santa Ana', 'CA', '92704', 'S03')
;INSERT INTO Potential_Customers VALUES('31005', '31004', 'OGC Music Man', '57 Underwood Blvd.', 'Troy', 'MI', '48084', 'S02')
;INSERT INTO Potential_Customers VALUES('9517', null, '3Rz Learning', '36 North Miller Ave.', 'Syracuse', 'NY', '13206', 'E01')

;INSERT INTO Slspers VALUES ('E01', 'Kent', 'Allard', 0.05)
;INSERT INTO Slspers VALUES ('E02', 'Margo', 'Lane', 0.05)
;INSERT INTO Slspers VALUES ('E03', 'Fred', 'Bartell', 0.02)
;INSERT INTO Slspers VALUES ('N01', 'Richard', 'Gibson', 0.03)
;INSERT INTO Slspers VALUES ('N02', 'Pat', 'Powell', 0.03)
;INSERT INTO Slspers VALUES ('S01', 'George', 'Cranston', 0.04)
;INSERT INTO Slspers VALUES ('S02', 'Amelia', 'Rose', 0.05)
;INSERT INTO Slspers VALUES ('S03', 'Charlotte', 'Matthews', 0.04)
;INSERT INTO Slspers VALUES ('W01', 'Anna', 'Nolan', 0.02)
;INSERT INTO Slspers VALUES ('W02', 'Anne', 'Green', 0.04)

;INSERT INTO Titles VALUES('39843', 'Clear Cupboards', 15055.5, 49.95, ‘2007-08-19 0:00:00’)
;INSERT INTO Titles VALUES('39905', 'Y2K, Why Worry?', 19990, 45, ‘2008-01-01 0:00:00’)
;INSERT INTO Titles VALUES('40121', 'Boating Safety', 15421.81, 36.5, ‘2008-05-18 0:00:00’)
;INSERT INTO Titles VALUES('40122', 'Sailing', 9932.96, 29.15, ‘2008-05-03 0:00:00’)
;INSERT INTO Titles VALUES('40123', 'The Sport of Windsurfing', 12798.32, 38.5, ‘2007-07-13 0:00:00’)
;INSERT INTO Titles VALUES('40124', 'The Sport of Hang Gliding', 15421.81, 49.68, ‘2008-01-06 0:00:00’)
;INSERT INTO Titles VALUES('40125', 'The Complete Football Reference', 15032.41, 49.99, ‘2007-08-03 0:00:00’)
;INSERT INTO Titles VALUES('40231', 'How to Play Piano (Beginner)', 9917.75, 25, ‘2007-06-11 0:00:00’)
;INSERT INTO Titles VALUES('40232', 'How to Play Piano (Intermediate)', 8565.35, 20.5, ‘2007-10-22 0:00:00’)
;INSERT INTO Titles VALUES('40233', 'How to Play Piano (Advanced)', 7971.02, 20.5, ‘2007-12-01 0:00:00’)
;INSERT INTO Titles VALUES('40234', 'How to Play Piano (Professional)', 9901.42, 25, ‘2007-11-13 0:00:00’)
;INSERT INTO Titles VALUES('40251', 'How to Play Guitar (Beginner)', 9727.8, 25, ‘2007-09-14 0:00:00’)
;INSERT INTO Titles VALUES('40252', 'How to Play Guitar (Intermediate)', 8862.95, 20.5, ‘2007-10-26 0:00:00’)
;INSERT INTO Titles VALUES('40253', 'How to Play Guitar (Advanced)', 8355.5, 20.5, ‘2007-12-30 0:00:00’)
;INSERT INTO Titles VALUES('40254', 'How to Play Guitar (Professional)', 9704.71, 25, ‘2008-01-28 0:00:00’)
;INSERT INTO Titles VALUES('40321', 'Starting a Small Garden', 12369.67, 35, ‘2008-03-24 0:00:00’)
;INSERT INTO Titles VALUES('40322', 'Starting a Greenhouse', 11424.14, 30.5, ‘2008-05-05 0:00:00’)
;INSERT INTO Titles VALUES('40323', 'Flower Arranging', 7366.46, 20, ‘2008-03-30 0:00:00’)
;INSERT INTO Titles VALUES('40324', 'The Complete Guide to Flowers', 9185.31, 24.95, ‘2008-02-05 0:00:00’)
;INSERT INTO Titles VALUES('40325', 'The Complete Guide to Vegetables', 9709.2, 24.95, ‘2008-03-10 0:00:00’)
;INSERT INTO Titles VALUES('40326', 'English Gardens', 15998, 40, ‘2007-08-03 0:00:00’)
;INSERT INTO Titles VALUES('40361', 'Landscaping (Beginner)', 12933.53, 30, ‘2008-03-12 0:00:00’)
;INSERT INTO Titles VALUES('40363', 'Landscaping (Advanced)', 12336.42, 25, ‘2008-03-22 0:00:00’)
;INSERT INTO Titles VALUES('40364', 'Landscaping (Professional)', 13445.62, 30, ‘2008-04-05 0:00:00’)
;INSERT INTO Titles VALUES('40451', 'Plumbing Repairs Made Easy', 15179.75, 40.25, ‘2007-08-28 0:00:00’)
;INSERT INTO Titles VALUES('40452', 'Woodworking Around the House', 14385.73, 46.97, ‘2008-04-23 0:00:00’)
;INSERT INTO Titles VALUES('40453', 'Wallpapering Made Easy', 9931.03, 25.5, ‘2008-02-16 0:00:00’)
;INSERT INTO Titles VALUES('40454', 'Minor Home Repairs Made Easy', 13258.89, 45.95, ‘2008-01-28 0:00:00’)
;INSERT INTO Titles VALUES('40455', 'More Home Repairs Made Easy', 14737.1, 49.99, ‘2008-04-01 0:00:00’)
;INSERT INTO Titles VALUES('40457', 'Basic Home Electronics', 9274.17, 32.29, ‘2007-10-23 0:00:00’)
;INSERT INTO Titles VALUES('40458', 'Modern Architecture', 12268.26, 39.99, ‘2007-09-15 0:00:00’)
;INSERT INTO Titles VALUES('40471', 'Guide to Stereo Equipment', 13825.26, 39.98, ‘2007-08-20 0:00:00’)
;INSERT INTO Titles VALUES('40472', 'Guide to Video Equipment', 12845.3, 39.98, ‘2007-09-01 0:00:00’)
;INSERT INTO Titles VALUES('40481', 'Simple Auto Repairs', NULL, 39.99, ‘2007-06-29 0:00:00’)
;INSERT INTO Titles VALUES('40482', 'The Complete Auto Repair Guide', 16022.49, 50.99, ‘2007-07-22 0:00:00’)
;INSERT INTO Titles VALUES('40521', 'Creating Toys in Wood', 9445.07, 23.79, ‘2007-12-04 0:00:00’)
;INSERT INTO Titles VALUES('40522', 'Cross-stitching for Special Occasions', 8102.48, 20, ‘2007-10-30 0:00:00’)
;INSERT INTO Titles VALUES('40526', 'Furniture Refinishing', 11642.95, 39.99, ‘2008-01-12 0:00:00’)
;INSERT INTO Titles VALUES('40527', 'Furniture Upholstery', 13136.26, 46.95, ‘2007-06-24 0:00:00’)
;INSERT INTO Titles VALUES('40551', 'The Art of Water Painting', 11155.98, 34.5, ‘2008-01-06 0:00:00’)
;INSERT INTO Titles VALUES('40552', 'The Art of Oil Painting', 11277.56, 34.5, ‘2008-03-17 0:00:00’)
;INSERT INTO Titles VALUES('40553', 'The Art of Pen and Ink Drawing', 11368.88, 34.5, ‘2008-04-29 0:00:00’)
;INSERT INTO Titles VALUES('40561', 'All Kinds of Knitting', 10075.98, 26.98, ‘2008-04-16 0:00:00’)
;INSERT INTO Titles VALUES('40562', 'Learning to Crochet', 10001.14, 30.75, ‘2007-07-31 0:00:00’)
;INSERT INTO Titles VALUES('40563', 'Stencil the Room', 8812.4, 15.5, ‘2008-02-03 0:00:00’)
;INSERT INTO Titles VALUES('40564', 'Macrame Made Easy', 7520.27, 20, ‘2007-08-31 0:00:00’)
;INSERT INTO Titles VALUES('40569', 'Calligraphy', 8973.43, 25.25, ‘2008-05-03 0:00:00’)
;INSERT INTO Titles VALUES('40581', 'Unique Picture Framing', 11235.95, 34.5, ‘2007-07-01 0:00:00’)
;INSERT INTO Titles VALUES('40611', 'Learning Italian (Beginner)', 9604.62, 30, ‘2007-12-18 0:00:00’)
;INSERT INTO Titles VALUES('40612', 'Learning Italian (Intermediate)', 9728.85, 30, ‘2008-02-04 0:00:00’)
;INSERT INTO Titles VALUES('40613', 'Learning Italian (Advanced)', 9941.71, 30, ‘2008-04-21 0:00:00’)
;INSERT INTO Titles VALUES('40614', 'Conversational Italian', 11014.81, 35, ‘2007-06-11 0:00:00’)
;INSERT INTO Titles VALUES('40621', 'Learning German (Beginner)', 9697.09, 30, ‘2007-10-29 0:00:00’)
;INSERT INTO Titles VALUES('40622', 'Learning German (Intermediate)', 9990.83, 30, ‘2008-01-26 0:00:00’)
;INSERT INTO Titles VALUES('40623', 'Learning German (Advanced)', 9850.61, 30, ‘2008-04-22 0:00:00’)
;INSERT INTO Titles VALUES('40624', 'Conversational German', 9972.89, 35, ‘2008-05-28 0:00:00’)
;INSERT INTO Titles VALUES('40631', 'Learning French (Beginner)', 9008.08, 30, ‘2007-11-04 0:00:00’)
;INSERT INTO Titles VALUES('40632', 'Learning French (Intermediate)', 9469.79, 30, ‘2007-12-11 0:00:00’)
;INSERT INTO Titles VALUES('40633', 'Learning French (Advanced)', 9805.98, 30, ‘2008-03-31 0:00:00’)
;INSERT INTO Titles VALUES('40634', 'Conversational French', 10905.3, 35, ‘2008-05-20 0:00:00’)
;INSERT INTO Titles VALUES('40641', 'Learning Japanese (Beginner)', 9875.52, 30, ‘2007-07-01 0:00:00’)
;INSERT INTO Titles VALUES('40642', 'Learning Japanese (Intermediate)', 9753.66, 30, ‘2007-09-15 0:00:00’)
;INSERT INTO Titles VALUES('40643', 'Learning Japanese (Advanced)', NULL, 30, ‘2007-11-20 0:00:00’)
;INSERT INTO Titles VALUES('40644', 'Conversational Japanese', NULL, 35, ‘2008-02-11 0:00:00’)
;INSERT INTO Titles VALUES('40651', 'Learning Chinese (Beginner)', 9557.81, 30, ‘2007-07-20 0:00:00’)
;INSERT INTO Titles VALUES('40652', 'Learning Chinese (Intermediate)', 9789.23, 30, ‘2007-11-11 0:00:00’)
;INSERT INTO Titles VALUES('40653', 'Learning Chinese (Advanced)', NULL, 30, ‘2008-02-26 0:00:00’)
;INSERT INTO Titles VALUES('40654', 'Conversational Chinese', NULL, 35, ‘2008-04-29 0:00:00’)
;INSERT INTO Titles VALUES('40711', 'Recipes From Italy', 11772.73, 39.99, ‘2007-09-02 0:00:00’)
;INSERT INTO Titles VALUES('40712', 'Recipes From India', 11105.15, 38.89, ‘2007-08-19 0:00:00’)
;INSERT INTO Titles VALUES('40713', 'Decorating Wedding Cakes', 13166.88, 44.45, ‘2007-07-29 0:00:00’)
;INSERT INTO Titles VALUES('40714', 'Chocolate Lovers Cookbook', 9557.41, 25.95, ‘2007-08-03 0:00:00’)
;INSERT INTO Titles VALUES('40811', 'Understanding Geometry', 11056.44, 35.75, ‘2008-03-15 0:00:00’)
;INSERT INTO Titles VALUES('40812', 'Understanding Trigonometry', 12294.03, 35.75, ‘2008-02-24 0:00:00’)
;INSERT INTO Titles VALUES('40819', 'Quick Study in Calculus', 8508.43, 21.95, ‘2008-04-01 0:00:00’)
;INSERT INTO Titles VALUES('40821', 'Understanding Physics', 12933.19, 42.98, ‘2008-02-24 0:00:00’)
;INSERT INTO Titles VALUES('40822', 'Understanding Biology', 12675.5, 35.73, ‘2008-02-24 0:00:00’)
;INSERT INTO Titles VALUES('40829', 'Quick Study in English Grammar', 7980, 21.95, ‘2008-05-10 0:00:00’)
;INSERT INTO Titles VALUES('40890', 'The Mayan Civilization', 13409.44, 39.99, ‘2008-05-18 0:00:00’)
;INSERT INTO Titles VALUES('40891', 'Writing the Great American Novel', NULL, 44.5, ‘2008-05-25 0:00:00’)
;INSERT INTO Titles VALUES('40892', 'How to Manage Money Effectively', 13929.75, 44.5, ‘2008-05-25 0:00:00’)
;INSERT INTO Titles VALUES('40893', 'North American History', 16349.94, 50, ‘2008-05-27 0:00:00’)
;INSERT INTO Titles VALUES('40894', 'Studying the Civil War', 15301.41, 47.99, ‘2007-08-05 0:00:00’)
;INSERT INTO Titles VALUES('40895', 'The History of Baseball', 13187.06, 69.99, ‘2008-04-01 0:00:00’)
;INSERT INTO Titles VALUES('40896', 'Studying Greek Mythology', 11259.34, 27.95, ‘2008-03-02 0:00:00’)
;INSERT INTO Titles VALUES('40897', 'Mythologies of the World', 15714.02, 49.95, ‘2008-04-06 0:00:00’)
;INSERT INTO Titles VALUES('40921', 'Taking Care of Your Dog', 8808.74, 13.99, ‘2008-03-29 0:00:00’)
;INSERT INTO Titles VALUES('40922', 'Taking Care of Your Hamster', 7260.73, 13.99, ‘2008-03-24 0:00:00’)
;INSERT INTO Titles VALUES('40923', 'Taking Care of Your Fish', 9200.6, 13.99, ‘2008-04-12 0:00:00’)
;INSERT INTO Titles VALUES('40924', 'Taking Care of Your Cat', 9580.8, 13.99, ‘2008-04-26 0:00:00’)
;INSERT INTO Titles VALUES('40925', 'Taking Care of Your Rabbit', 8255.62, 13.99, ‘2008-05-19 0:00:00’)
;INSERT INTO Titles VALUES('40926', 'Taking Care of Your Parrot', 9904.7, 13.99, ‘2008-05-20 0:00:00’)

;INSERT INTO Sales values('00101', ‘2007-11-16 0:00:00’, 220, '20503', '40125', 'N01')
;INSERT INTO Sales values('00102', ‘2007-11-20 0:00:00’, 100, '8802', '40232', 'N02')
;INSERT INTO Sales values('00103', ‘2007-11-20 0:00:00’, 170, '9989', '40641', 'N02')
;INSERT INTO Sales values('00104', ‘2007-12-07 0:00:00’, 100, '9989', '40562', 'N02')
;INSERT INTO Sales values('00105', ‘2007-12-14 0:00:00’, 150, '20493', '40481', 'N01')
;INSERT INTO Sales values('00106', ‘2007-12-16 0:00:00’, 200, '9989', '40712', 'N02')
;INSERT INTO Sales values('00107', ‘2007-12-22 0:00:00’, 200, '9989', '40562', 'N02')
;INSERT INTO Sales values('00108', ‘2008-01-11 0:00:00’, 200, '20417', '40125', 'W01')
;INSERT INTO Sales values('00109', ‘2008-01-12 0:00:00’, 250, '8802', '40231', 'N02')
;INSERT INTO Sales values('00110', ‘2008-01-12 0:00:00’, 250, '20330', '40482', 'S03')
;INSERT INTO Sales values('00111', ‘2008-01-18 0:00:00’, 100, '9989', '40551', 'N02')
;INSERT INTO Sales values('00112', ‘2008-01-20 0:00:00’, 120, '8802', '40251', 'N02')
;INSERT INTO Sales values('00113', ‘2008-01-20 0:00:00’, 400, '20417', '40614', 'W01')
;INSERT INTO Sales values('00114', ‘2008-01-20 0:00:00’, 100, '20506', '40253', 'S01')
;INSERT INTO Sales values('00115', ‘2008-01-22 0:00:00’, 190, '8802', '40233', 'N02')
;INSERT INTO Sales values('00116', ‘2008-01-26 0:00:00’, 100, '8802', '40231', 'N02')
;INSERT INTO Sales values('00117', ‘2008-01-27 0:00:00’, 200, '20493', '40564', 'N01')
;INSERT INTO Sales values('00118', ‘2008-01-29 0:00:00’, 240, '20503', '40526', 'N01')
;INSERT INTO Sales values('00119', ‘2008-02-02 0:00:00’, 200, '21133', '40581', 'S01')
;INSERT INTO Sales values('00120', ‘2008-02-05 0:00:00’, 180, '20503', '40231', 'N01')
;INSERT INTO Sales values('00121', ‘2008-02-09 0:00:00’, 100, '20506', '40251', 'S01')
;INSERT INTO Sales values('00122', ‘2008-02-09 0:00:00’, 100, '21133', '40521', 'S01')
;INSERT INTO Sales values('00123', ‘2008-02-12 0:00:00’, 150, '8864', '40562', 'N02')
;INSERT INTO Sales values('00124', ‘2008-02-15 0:00:00’, 180, '9881', '40564', 'E01')
;INSERT INTO Sales values('00125', ‘2008-02-15 0:00:00’, 100, '9989', '40564', 'N02')
;INSERT INTO Sales values('00126', ‘2008-02-16 0:00:00’, 160, '20482', '40521', 'S02')
;INSERT INTO Sales values('00127', ‘2008-02-22 0:00:00’, 200, '9517', '40711', 'E01')
;INSERT INTO Sales values('00128', ‘2008-02-23 0:00:00’, 130, '9989', '40521', 'N02')
;INSERT INTO Sales values('00129', ‘2008-02-25 0:00:00’, null, '21151', '40821', 'S03')
;INSERT INTO Sales values('00130', ‘2008-02-26 0:00:00’, 330, '9881', '40812', 'E01')
;INSERT INTO Sales values('00131', ‘2008-03-16 0:00:00’, 200, '9881', '40896', 'E01')
;INSERT INTO Sales values('00132', ‘2008-03-18 0:00:00’, 400, '20503', '40581', 'N01')
;INSERT INTO Sales values('00133', ‘2008-03-18 0:00:00’, 130, '20503', '40714', 'N01')
;INSERT INTO Sales values('00134', ‘2008-03-24 0:00:00’, 500, '9989', '40552', 'N02')
;INSERT INTO Sales values('00135', ‘2008-03-30 0:00:00’, 100, '9517', '40921', 'E01')
;INSERT INTO Sales values('00136', ‘2008-03-31 0:00:00’, 160, '20417', '40123', 'W01')
;INSERT INTO Sales values('00137', ‘2008-03-31 0:00:00’, 220, '20417', '40125', 'W01')
;INSERT INTO Sales values('00138', ‘2008-04-02 0:00:00’, 150, '9881', '40821', 'E01')
;INSERT INTO Sales values('00139', ‘2008-04-09 0:00:00’, 160, '20482', '40561', 'S02')
;INSERT INTO Sales values('00140', ‘2008-04-09 0:00:00’, 170, '9881', '40897', 'E01')
;INSERT INTO Sales values('00141', ‘2008-04-15 0:00:00’, 100, '9989', '40323', 'N02')
;INSERT INTO Sales values('00142', ‘2008-04-15 0:00:00’, 250, '20557', '40922', 'S01')
;INSERT INTO Sales values('00143', ‘2008-04-20 0:00:00’, 200, '20181', '40321', 'E02')
;INSERT INTO Sales values('00144', ‘2008-04-20 0:00:00’, 100, '8864', '40561', 'N02')
;INSERT INTO Sales values('00145', ‘2008-04-22 0:00:00’, 500, '20181', '40633', 'E02')
;INSERT INTO Sales values('00146', ‘2008-04-22 0:00:00’, 250, '20417', '40923', 'W01')
;INSERT INTO Sales values('00147', ‘2008-04-22 0:00:00’, 100, '20309', '40323', 'S01')
;INSERT INTO Sales values('00148', ‘2008-04-26 0:00:00’, 120, '20557', '40923', 'S01')
;INSERT INTO Sales values('00149', ‘2008-04-27 0:00:00’, 120, '20482', '40562', 'S02')
;INSERT INTO Sales values('00150', ‘2008-04-27 0:00:00’, 370, '20503', '40451', 'N01')
;INSERT INTO Sales values('00151', ‘2008-04-27 0:00:00’, 200, '20493', '40454', 'N01')
;INSERT INTO Sales values('00152', ‘2008-04-27 0:00:00’, 160, '9517', '40923', 'E01')
;INSERT INTO Sales values('00153', ‘2008-04-27 0:00:00’, 250, '21151', '40811', 'S03')
;INSERT INTO Sales values('00154', ‘2008-04-29 0:00:00’, 350, '20512', '40325', 'S03')
;INSERT INTO Sales values('00155', ‘2008-04-29 0:00:00’, 100, '20506', '40252', 'S01')
;INSERT INTO Sales values('00156', ‘2008-05-03 0:00:00’, 190, '20181', '40452', 'E02')
;INSERT INTO Sales values('00157', ‘2008-05-04 0:00:00’, 350, '9517', '40924', 'E01')
;INSERT INTO Sales values('00158', ‘2008-05-04 0:00:00’, 200, '21133', '40569', 'S01')
;INSERT INTO Sales values('00159', ‘2008-05-05 0:00:00’, 350, '20512', '40322', 'S03')
;INSERT INTO Sales values('00160', ‘2008-05-07 0:00:00’, 260, '20557', '40924', 'S01')
;INSERT INTO Sales values('00161', ‘2008-05-10 0:00:00’, null, '8864', '40569', 'N02')
;INSERT INTO Sales values('00162', ‘2008-05-11 0:00:00’, 150, '20503', '40633', 'N01')
;INSERT INTO Sales values('00163', ‘2008-05-12 0:00:00’, 250, '9881', '40890', 'E01')
;INSERT INTO Sales values('00164', ‘2008-05-13 0:00:00’, 500, '20181', '40321', 'E02')
;INSERT INTO Sales values('00165', ‘2008-05-14 0:00:00’, 180, '9881', '40829', 'E01')
;INSERT INTO Sales values('00166', ‘2008-05-19 0:00:00’, 330, '9881', '40821', 'E01')
;INSERT INTO Sales values('00167', ‘2008-05-19 0:00:00’, 100, '9881', '40819', 'E01')
;INSERT INTO Sales values('00168', ‘2008-05-21 0:00:00’, 250, '20417', '40890', 'W01')
;INSERT INTO Sales values('00169', ‘2008-05-21 0:00:00’, 500, '21133', '40552', 'S01')
;INSERT INTO Sales values('00170', ‘2008-05-24 0:00:00’, 150, '20181', '40561', 'E02')
;INSERT INTO Sales values('00171', ‘2008-05-24 0:00:00’, 110, '9517', '40926', 'E01')
;INSERT INTO Sales values('00172', ‘2008-05-26 0:00:00’, 220, '20181', '40322', 'E02')
;INSERT INTO Sales values('00173', ‘2008-05-26 0:00:00’, 100, '9989', '40569', 'N02')
;INSERT INTO Sales values('00174', ‘2008-05-27 0:00:00’, 160, '21151', '40893', 'S03')
;INSERT INTO Sales values('00175', ‘2008-05-28 0:00:00’, 200, '9881', '40893', 'E01')
;INSERT INTO Sales values('00176', ‘2008-05-28 0:00:00’, 120, '9517', '40457', 'E01')
;INSERT INTO Sales values('00177', ‘2008-05-28 0:00:00’, 190, '9881', '40812', 'E01')
;INSERT INTO Sales values('00178', ‘2008-05-28 0:00:00’, 400, '20417', '40624', 'W01')
;INSERT INTO Sales values('00179', ‘2008-06-01 0:00:00’, 500, '9989', '40890', 'N02')
;INSERT INTO Sales values('00180', ‘2008-06-02 0:00:00’, 250, '9517', '40890', 'E01')
;INSERT INTO Sales values('00181', ‘2008-06-03 0:00:00’, 170, '9881', '40895', 'E01')
;INSERT INTO Sales values('00182', ‘2008-06-07 0:00:00’, 110, '9989', '40527', 'N02')
;INSERT INTO Sales values('00183', ‘2008-06-09 0:00:00’, 140, '20181', '40325', 'E02')
;INSERT INTO Sales values('00184', ‘2008-06-11 0:00:00’, null, '9517', '40363', 'E01')
;INSERT INTO Sales values('00185', ‘2008-06-11 0:00:00’, 250, '20417', '40122', 'W01')
;INSERT INTO Sales values('00186', ‘2008-06-11 0:00:00’, 120, '20557', '40921', 'S01')
;INSERT INTO Sales values('00187', ‘2008-06-11 0:00:00’, 100, '9989', '40553', 'N02')
;INSERT INTO Sales values('00188', ‘2008-06-14 0:00:00’, 330, '9881', '40890', 'E01')
;INSERT INTO Sales values('00189', ‘2008-06-15 0:00:00’, 500, '9517', '40896', 'E01')
;INSERT INTO Sales values('00190', ‘2008-06-15 0:00:00’, 170, '20309', '40890', 'S01')
;INSERT INTO Sales values('00191', ‘2008-06-22 0:00:00’, 500, '9517', '40361', 'E01')
;INSERT INTO Sales values('00192', ‘2008-06-22 0:00:00’, 220, '20330', '40893', 'S03')
;INSERT INTO Sales values('00193', ‘2008-06-22 0:00:00’, 110, '20330', '40121', 'S03')
;INSERT INTO Sales values('00194', ‘2008-06-22 0:00:00’, 100, '20309', '40890', 'S01')
;INSERT INTO Sales values('00195', ‘2008-06-28 0:00:00’, 100, '9989', '40561', 'N02')
;INSERT INTO Sales values('00196', ‘2008-06-29 0:00:00’, 100, '9881', '40829', 'E01')
;INSERT INTO Sales values('00197', ‘2008-06-29 0:00:00’, 190, '20417', '40454', 'W01')
;INSERT INTO Sales values('00198', ‘2008-06-29 0:00:00’, 190, '20417', '40457', 'W01')

