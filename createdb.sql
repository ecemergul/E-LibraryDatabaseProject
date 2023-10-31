CREATE TABLE Book(
	bookID integer PRIMARY KEY,
	bname varchar(300),
	byear NUMERIC(4),
	bpage integer
);

INSERT INTO Book VALUES
	(12345, 'Demian', 1919, 390)
	(34521, 'The Alchemist', 1988, 163)
	(78123, 'Fahrenheit 451', 1953, 256)
	(19570, 'Puslu Kýtalar Atlasý', 1995, 238)
	(64532, 'Harry Potter and the Philosopher's Stone', 1997, 332)
	(51026, 'Heart of Darkness', 1902, 144)
	(89057, 'Hopscotch', 1963, 576)
	(10000, 'The Handmaid's Tale', 1985, 311) 
	(20043, 'The Catcher in the Rye', 1951, 234)
	(99056, 'To Kill a Mockingbird', 1960, 281)
	(18751, 'The Little Prince', 1943, 96)
	(32323, 'Harry Potter and the Chamber of Secrets', 1998, 251)
	(12121, 'Harry Potter and the Prisoner of Azkaban', 1999, 317);


CREATE TABLE Ebook(
	ebookID integer PRIMARY KEY,
	ebname varchar(300),
	ebyear NUMERIC(4),
	ebpage integer,
	loanfee NUMERIC(5,2)
);

INSERT INTO Ebook VALUES
	(1, 'Demian', 1919, 390, 17.55)
	(2, 'The Alchemist', 1988, 163, 16.45)
	(3, 'Fahrenheit 451', 1953, 256, 17.40)
	(4, 'Puslu Kýtalar Atlasý', 1995, 238, 33.00)
	(5, 'Harry Potter and the Philosopher's Stone', 1997, 332, 22.00)
	(6, 'Heart of Darkness', 1902, 144, 20.08)
	(7, 'Hopscotch', 1963, 576, 30.45)
	(8, 'The Handmaid's Tale', 1985, 311, 32.00) 
	(9, 'The Catcher in the Rye', 1951, 234, 18.00)
	(10, 'To Kill a Mockingbird', 1960, 281, 22.75)
	(11, 'The Little Prince', 1943, 96, 6.65)
	(99, 'Harry Potter and the Goblet of Fire', 2000, 636, 35.00);


CREATE TABLE Magazine(
	mID integer PRIMARY KEY,
	mtitle varchar(300),
	issue varchar(50),
	mpage integer
);


INSERT INTO Magazine VALUES	
	(33999, 'T3 Magazine', 'June 2020', 45)
	(11111, 'Maxim', 'May-June 2020', 47)
	(22222, 'Popular Science', 'Summer 2020', 64)
	(33333, 'People', 'May 2020', 60)
	(44444, 'Cosmopolitan', 'June 2020', 63)
	(55555, 'Forbes', 'May 2020', 69)
	(66666, 'Time', 'May 2020', 74)
	(77777, 'Harper's BAZAAR', 'May 2020', 66)
	(88888, 'Entertainment Weekly', 'June 2020', 58)
	(99999, 'ELLE', 'January 2020', 64);
	


CREATE TABLE Emagazine(
	emID integer PRIMARY KEY,
	emtitle varchar(300),
	emissue varchar(50),
	empage integer,
	loanfee NUMERIC(5,2)
);

INSERT INTO Emagazine VALUES
	(12, 'T3 Magazine', 'June 2020', 45, 27.56)
	(13, 'Maxim', 'May-June 2020', 47, 24.30)
	(14, 'Popular Science', 'Summer 2020', 64, 30.60)
	(15, 'People', 'May 2020', 60, 36.00)
	(16, 'Cosmopolitan', 'June 2020', 63, 30.00)
	(17, 'Forbes', 'May 2020', 69, 31.45)
	(18, 'Time', 'May 2020', 74, 31.45)
	(19, 'Harper's BAZAAR', 'May 2020', 66, 36.00)
	(20, 'Entertainment Weekly', 'June 2020', 58, 37.00)
	(21, 'ELLE', 'January 2020', 64, 30.66);



CREATE TABLE Article(
	arID integer PRIMARY KEY,
	atitle varchar(300),
	ayear NUMERIC(4),
	apage integer
);

INSERT INTO Article VALUES
	(88889, 'COVID-19: consider cytokine storm syndromes and immunosuppression', 2020, null)
	(88887, 'Presumed Asymptomatic Carrier Transmission of COVID-19', 2020, 2)
	(88886, 'Social psychology', 1977, null)
	(88885, 'In Search of Underlying Dimensions: The Use (and Abuse) of Factor Analysis in Personality and Social Psychology', 2002, 23)
	(88884, 'Lucifer Effect', 2011, null)
	(88883, 'Social anxiety disorder', 2008, 1)
	(88882, 'Robotic surgery, telerobotic surgery, telepresence, and telementoring', 2002, 13)
	(88881, 'Cults and charismatic group psychology', 1996, null)
	(88880, 'RNA tumor viruses', 1985, 12)
	(88879, 'An interactive web-based dashboard to track COVID-19 in real time', 2020, null);



CREATE TABLE Earticle(
	earID integer PRIMARY KEY,
	eatitle varchar(300),
	eayear NUMERIC(4),
	eapage integer,
	loanfee NUMERIC(5,2)
);

INSERT INTO Earticle VALUES
	(22, 'COVID-19: consider cytokine storm syndromes and immunosuppression', 2020, NULL, 7.33)
	(23, 'Presumed Asymptomatic Carrier Transmission of COVID-19', 2020, 2, 3.05)
	(24, 'Social psychology', 1977, NULL, 8.00)
	(25, 'In Search of Underlying Dimensions: The Use (and Abuse) of Factor Analysis in Personality and Social Psychology', 2002, 23, 10.50)
	(26, 'Lucifer Effect', 2011, NULL, 5.00)
	(27, 'Social anxiety disorder', 2008, 1, 3.40)
	(28, 'Robotic surgery, telerobotic surgery, telepresence, and telementoring', 2002, 13, 10.60)
	(29, 'Cults and charismatic group psychology', 1996, NULL, 8.30)
	(30, 'RNA tumor viruses', 1985, 12, 7.33)
	(31, 'An interactive web-based dashboard to track COVID-19 in real time', 2020, NULL, 5.50);



CREATE TABLE Author(
	authorID integer PRIMARY KEY,
	autname varchar(70)
);

INSERT INTO Author VALUES
	(99998, 'Hermann Hesse')
	(99997, 'Ray Bradbury')
	(99996, 'Paulo Coelho')
	(99995, 'Ýhsan Oktay Anar')
	(99994, 'J.K. Rowling')
	(99993, 'Joseph Conrad')
	(99992, 'Julio Cortazar')
	(99991, 'Margaret Atwood')
	(99990, 'J. D. Salinger')
	(99989, 'Harper Lee')
	(99988, 'Cassandra Clare')
	(99987, 'Dan Brown')
	(99986, 'Puja Mehta')
	(99985, 'Daniel F. McAuley')
	(99984, 'Michael Brown')
	(99983, 'Emilie Sanchez')
	(99982, 'Rachel S. Tattersall')
	(99981, 'Jessica J. Manson')
	(99980, 'Philip J. Zimbardo')
	(99979, 'Murray B. Stein')
	(99978, 'Dan J. Stein')
	(99977, 'M. Galanter')
	(99976, 'Carl G. Jung');



CREATE TABLE Reader(
	uID integer PRIMARY KEY,
	uname varchar(300),
	email varchar(100),
	pnumber char(11)
);

INSERT INTO Reader VALUES
	(32, 'Ecem Ergül', 'ecem.ergul@tedu.edu.tr', '05075438764')
	(33, 'Gamzenur Dorgut', 'gamzenur.dorgut@tedu.edu.tr', '05306573244')
	(34, 'Gülten Þevval Erdal', 'gsevval.erdal@tedu.edu.tr', '05078439700')
	(35, 'Anna', 'anna@hotmail.com', '05073331322')
	(36, 'Ahmet', 'ahmet@hotmail.com', '05485701135')
	(37, 'Ece', 'ece@hotmail.com', '05079990988')
	(38, 'Aslý', 'aslý@gmail.com', '05076587641')
	(39, 'David', 'david@hotmail.com', '05331237382')
	(40, 'Kevin Moon', 'kevinmoon@hotmail.com', '05386102050')
	(41, 'Jacob', 'jacob@gmail.com', '05449877521');



CREATE TABLE Writes_B(
	authorID integer,
	bookID integer,
	PRIMARY KEY(authorID, bookID),
	FOREIGN KEY(authorID) REFERENCES Author(authorID),
	FOREIGN KEY(bookID) REFERENCES Book(bookID)
);

INSERT INTO Writes_B VALUES
	(99998, 12345)
	(99996, 34521)
	(99997, 78123)
	(99995, 19570)
	(99994, 64532)
	(99993, 51026)
	(99992, 89057)
	(99991, 10000)
	(99990, 20043)
	(99989, 99056)
	(99994, 32323)
	(0, 12121)
	(0, 10000);

CREATE TABLE Writes_EB(
	authorID integer,
	ebookID integer,
	PRIMARY KEY(authorID, ebookID),
	FOREIGN KEY(authorID) REFERENCES Author(authorID),
	FOREIGN KEY(ebookID) REFERENCES Ebook(ebookID)
);

INSERT INTO Writes_EB VALUES
	(99998,1), 
	(99996,2), 
	(99997,3), 
	(99995,4), 
	(99994,5), 
	(99993,6), 
	(99992,7), 
	(99991,8),  
	(99990,9), 
	(99989,10),
	(0,99);


CREATE TABLE Writes_A(
	authorID integer,
	arID integer,
	PRIMARY KEY(authorID, arID),
	FOREIGN KEY(authorID) REFERENCES Author(authorID),
	FOREIGN KEY(arID) REFERENCES Article(arID)
);

INSERT INTO Writes_A VALUES
	(99986, 88889)
	(99985, 88889)
	(99984, 88889)
	(99983, 88889)
	(99982, 88889)
	(99981, 88889)
	(99980, 88884)
	(99979, 88883)
	(99978, 88883)
	(99977, 88881)
	(0, 88886);

CREATE TABLE Writes_EA(
	authorID integer,
	earID integer,
	PRIMARY KEY(authorID, earID),
	FOREIGN KEY(authorID) REFERENCES Author(authorID),
	FOREIGN KEY(earID) REFERENCES Emagazine(earID)
);

INSERT INTO Writes_EA VALUES
	(99986, 22)
	(99985, 22)
	(99984, 22)
	(99983, 22)
	(99982, 22)
	(99981, 22)
	(99980, 26)
	(99979, 27)
	(99978, 27)
	(99977, 29)
	(99996, 0);

CREATE TABLE Rent_EB(
	uID integer,
	ebookID integer,
	lcount SERIAL,
	ldate DATE,
	rdate DATE, 
	PRIMARY KEY(uID, ebookID),
	PRIMARY KEY(ldate),
	FOREIGN KEY(uID) REFERENCES Reader(uID),
	FOREIGN KEY(ebookID) REFERENCES Ebook(ebookID)
);

INSERT INTO Rent_EB(uID, ebookID,ldate,rdate)VALUES
	(32, 1,'23-10-2019','29-10-2019'),
	(32, 3,'03-05-2019','05-05-2019'),
	(33, 1,'21-03-2019','26-03-2019'),
	(33, 2,'02-02-2020','08-02-2020'),
	(34, 1,'15-06-2019','20-06-2019'),
	(34, 4,'17-02-2020','25-02-2020'),
	(40, 5,'01-03-2019','05-03-2019'),
	(40, 7,'06-11-2019','12-11-2019'),
	(41, 5,'18-09-2018','23-09-2018'),
	(41, 8,'06-07-2019','10-07-2019'),
	(35, 10,'19-12-2019','24-12-2019');
	

CREATE TABLE Rent_EA(
	uID integer,
	earID integer,
	lcount SERIAL,
	ldate DATE,
	rdate DATE, 
	PRIMARY KEY(uID, earID),
	PRIMARY KEY(ldate),
	FOREIGN KEY(uID) REFERENCES Reader(uID),
	FOREIGN KEY(earID) REFERENCES Earticle(earID)
);

INSERT INTO Rent_EA(uID, earID,ldate,rdate)VALUES
	(32, 26,'03-10-2019','08-10-2019'),
	(36, 22,'12-05-2019','18-05-2019'),
	(33, 23,'20-03-2019','25-03-2019'),
	(37, 27,'11-02-2020','17-02-2020'),
	(34, 27,'23-06-2019','27-06-2019'),
	(38, 29,'04-02-2020','10-02-2020'),
	(40, 25,'09-03-2019','15-03-2019'),
	(40, 30,'13-11-2019','21-11-2019'),
	(41, 25,'19-06-2018','24-06-2018'),
	(30, 24,'07-07-2019','10-07-2019'),
	(35, 28,'06-12-2019','12-12-2019');

CREATE TABLE Rent_EM(
	uID integer,
	emID integer,
	lcount SERIAL,
	ldate DATE,
	rdate DATE, 
	PRIMARY KEY(uID, emID),
	PRIMARYKEY(ldate),
	FOREIGN KEY(uID) REFERENCES Reader(uID),
	FOREIGN KEY(emID) REFERENCES Emagazine(emID)
);

INSERT INTO Rent_EM(uID, emID,ldate,rdate)VALUES
	(32, 17,'01-10-2019','06-10-2019'),
	(33, 12,'02-05-2019','10-05-2019'),
	(34, 14,'03-03-2019','08-03-2019'),
	(35, 15,'04-02-2020','12-02-2020'),
	(35, 17,'05-06-2019','07-06-2019'),
	(36, 20,'06-02-2020','13-02-2020'),
	(37, 20,'07-03-2019','09-03-2019'),
	(37, 13,'08-11-2019','15-11-2019'),
	(39, 16,'09-09-2018','14-09-2018'),
	(40, 18,'10-07-2019','17-07-2019'),
	(41, 21,'11-12-2019','18-12-2019');

CREATE TABLE Reserve_B(
	uID integer,
	bookID integer,
	PRIMARY KEY(uID, bookID),
	FOREIGN KEY(uID) REFERENCES Reader(uID),
	FOREIGN KEY(bookID) REFERENCES Book(bookID)
);

INSERT INTO Reserve_B VALUES
	(41,12345) 
	(40,34521) 
	(39,78123) 
	(39,19570) 
	(38,64532) 
	(37,51026) 
	(36,89057) 
	(35,10000) 
	(34,20043) 
	(33,99056);

CREATE TABLE Reserve_A(
	uID integer,
	arID integer,
	PRIMARY KEY(uID, arID),
	FOREIGN KEY(uID) REFERENCES Reader(uID),
	FOREIGN KEY(arID) REFERENCES Article(arID)
);

CREATE TABLE Reserve_M(
	uID integer,
	mID integer,
	PRIMARY KEY(uID, mID),
	FOREIGN KEY(uID) REFERENCES Reader(uID),
	FOREIGN KEY(mID) REFERENCES Magazine(mID)
);


INSERT INTO Ebook(ebookID, ebname, ebyear, ebpage, loanfee) VALUES
	(54, 'Sis ve Alev', 2015, 342, 22.45);

INSERT INTO Emagazine(emID, emtitle, emissue, empage, loanfee) VALUES
	(77666, 'ELLE', 'February 2020', 61, 30.00);

INSERT INTO Reader(uID, uname, email, pnumber) VALUES
	(44, 'Aydýn Bilgin', 'aydýn.bilgin@gmail.com', '05337653243');


CREATE VIEW short_books_view AS
SELECT ebname, ebpage, loanfee
FROM Ebook
WHERE ebpage < 200;

INSERT INTO short_books_view(ebname, ebpage, loanfee)
VALUES ('A Wizard of Earthsea', 144, 12.55);

UPDATE short_books_view 
SET ebpage = ebpage + 1;
WHERE ebpage < 100;

DELETE FROM short_books_view 
WHERE ebname = 'The Alchemist';

UPDATE Book
SET bpage = bpage+2
WHERE bpage > 260;

DELETE FROM Book
WHERE bookID = 18751;

UPDATE Ebook
SET loanfee = loanfee*1.03
WHERE loanfee < 20;

UPDATE Ebook
SET loanfee = 23.00
WHERE ebookID = 54;

DELETE FROM Ebook
WHERE ebyear = 1985;

DELETE FROM Ebook
WHERE ebookID = 54;


UPDATE Magazine
SET mpage = mpage+5
WHERE mpage <= 60;

DELETE FROM Magazine
WHERE mpage < 50 and issue = 'June 2020';

UPDATE Emagazine
SET loanfee = loanfee*1.05
WHERE loanfee <= 30;

UPDATE Emagazine
SET loanfee = 30.50
WHERE emID = 77666;

DELETE FROM Emagazine
WHERE loanfee = 35.00 and emtitle = 'Entertainment Weekly';

DELETE FROM Emagazine
WHERE emID = 77666;

UPDATE Article
SET apage = apage+1
WHERE apage <> NULL;

DELETE FROM Article
WHERE arID = 88879;

UPDATE Earticle
SET loanfee = loanfee*1.02
WHERE loanfee < 6;

DELETE FROM Earticle
WHERE eatitle = 'Robotic surgery, telerobotic surgery, telepresence, and telementoring' and eayear = 2002;

UPDATE Author
SET autname = 'Haruki Murakami'
WHERE authorID = 99988;

DELETE FROM Author
WHERE authorID = 99987;

UPDATE Reader
SET  email = 'ece@gmail.com'
WHERE uID = 37;

UPDATE Reader
SET pnumber = '05556660011'
WHERE uID = 44;

DELETE FROM Reader
WHERE pnumber = '05485701135';

DELETE FROM Reader
WHERE uID = 44;

UPDATE Writes_B
SET authorID = 99994
WHERE bookID = 12121;

DELETE FROM Writes_B
WHERE bookID = 0 AND authorID = 0;

UPDATE Writes_EB
SET authorID = 99994
WHERE ebookID = 99;

DELETE FROM Writes_EB
WHERE authorID = 99994 AND ebookID = 99;

UPDATE Writes_A
SET authorID = 99976
WHERE arID = 0;

DELETE FROM Writes_A
WHERE authorID = 99976 AND arID = 0;

UPDATE Writes_EA
SET earID = 25
WHERE authorID = 99996;

DELETE FROM Writes_EA
WHERE authorID = 99996  AND earID = 25;

UPDATE Rent_EB
SET rdate = '30-10-2019'
WHERE uID = 32 AND ebookID = 1 AND ldate = '23-10-2019';

DELETE FROM Rent_EB
WHERE uID = 32 AND ebookID = 1 AND ldate = '23-10-2019';

UPDATE Rent_EA
SET rdate = '08-06-2019'
WHERE uID = 35 AND earID = 17 AND ldate = '05-06-2019';

DELETE FROM Rent_EA
WHERE uID = 35 AND earID = 17 AND ldate = '05-06-2019';

UPDATE Rent_EM
SET rdate = '13-11-2019'
WHERE uID = 37 AND emID = 13 AND ldate = '08-11-2019';

DELETE FROM Rent_EM
WHERE uID = 37 AND emID = 13 AND ldate = '08-11-2019';



ALTER SCHEMA Reader
RENAME TO User;


