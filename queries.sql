//List the names of users and the ID of the ebook that these users rented
SELECT uname, ebookID
FROM Reader, Rent_EB
WHERE Reader.uID = Rent_EB.uID;

//Lists the reader informations that have made a rent of e-book and e-magazine with rent information 
SELECT Reader.uID, Reader.uname, Reader.email, Reader.pnumber, Rent_EB.ebookID, Rent_EB.ldate, Rent_EB.rdate, Rent_EM.emID, Rent_EM.ldate, Rent_EM.rdate
FROM Reader 
INNER JOIN Rent_EB ON Rent_EB.uID = Reader.uID
INNER JOIN Rent_EM ON Rent_EB.uID = Rent_EM.uID;

//Lists the e-books that are rented with their rent start date
SELECT Ebook.ebname, Rent_EB.ldate
FROM Ebook FULL OUTER JOIN Rent_EB ON Ebook.ebookID = Rent_EB.ebookID; 

//Lists titles and loan fees of e-magazines where their loan fee is 
//greater than any other e-magazine's loan fee which has page number smaller than 65 
SELECT emtitle, loanfee
FROM Emagazine
WHERE loanfee > (SELECT loanfee
		 FROM Emagazine
		 WHERE empage < 65);

//Lists the ID, name, page number, publishment year of a e-book when
//the loan fee of that e-book is greater than average loan fee of all the e-books  
SELECT ebookID, ebname, ebpage, ebyear
FROM Ebook
WHERE loanfee > (SELECT AVG(loanfee)
		 FROM Ebook);

//Lists the e-magazine titles and the amount of e-magazines having that title
SELECT *
FROM (SELECT eatitle, COUNT(eaID) AS total 
      FROM Emagazine
      GROUP BY eatitle) AS num_by_title;

//Sums the loan fees of the e-books that are published between 1950 and
//1965, and gives the result under the name sum_of_price 
SELECT SUM(loanfee) AS sum_of_price
FROM Ebook
WHERE ebyear BETWEEN 1950 AND 1965;

//Lists the e-books' loan fees in ascending order with their name and ID
SELECT ebookID, ebname, loanfee
FROM Ebook
ORDER BY loanfee ASC;

//Gets the highest loan fee in e-magazines
SELECT MAX(loanfee) AS highest_loanfee
FROM Emagazine;

//Lists e-magazines that are issued in June 2020 and May 2020
(SELECT emID, emtitle 
FROM Emagazine 
WHERE emissue = 'May 2020')
UNION
(SELECT emID, emtitle
FROM Emagazine
WHERE emissue = 'June 2020');

//Lists different user/reader IDs that rented e-books and shows the IDs in
//descending order 
SELECT DISTINCT uID
FROM Rent_EB
ORDER BY uID DESC; 

//Gives the id of renter, first loan date and return date of an e-book 
//when uID is 40,41 or 33  
SELECT uID, ldate, rdate
FROM Rent_EB
WHERE uID IN (40,41,33);


//Finds all e-magazines whose loan fees are greater than the list of the average loan fees of each e-magazine brand
SELECT emID, emtitle, loanfee
FROM Emagazine
WHERE loanfee > ALL(SELECT AVG(loanfee)
		    FROM Emagazine
		    GROUP BY emtitle);

//Lists issue time and average loan fee of all e-magazines with that issue time which have an average loan fee greater than 30 
SELECT emissue, AVG(loanfee) 
FROM Emagazine
GROUP BY emissue
HAVING AVG(loanfee) > 30;

//Returns readers who have rented at least an e-article
SELECT uname
FROM Reader
WHERE EXISTS(SELECT 1 
	     FROM Rent_EA
	     WHERE Rent_EA.uID = Reader.uID);

//Gives all the author names which include 'Stein' in it
SELECT autname
FROM Author
WHERE autname LIKE '%Stein';

//Lists all the e-articles that have unknown number of pages
SELECT earID, eatitle, eayear, eapage
FROM Earticle
WHERE eapage IS NULL;

//Lists all e-books which have number of book pages equal to or greater
//than average number of book pages of e-books
SELECT ebname
FROM Ebook
WHERE ebpage >= SOME(SELECT AVG(ebpage) AS avg_book_length
		     FROM Ebook);

//Lists the books which have physical copy but not virtual copy and the 
//loan count of the virtual copy of each of them in last year
SELECT bname, Rent_EB.lcount
FROM Book, Rent_EB, Ebook
WHERE bname <> ebname AND Rent_EB.ebookID = Ebook.ebookID;

//Lists e-magazines which have loan fee higher than the highest e-book loanfee
SELECT emtitle, Emagazine.loanfee
FROM Emagazine
WHERE Emagazine.loanfee > (SELECT MAX(loanfee)
			   FROM Ebook);

//Lists all e-books and their loan fees
SELECT ebname, loanfee 
FROM Ebook;

//Lists all e-magazine brands and their loan fees
SELECT emtitle, loanfee 
FROM Emagazine;

//Lists all readers with their name, email and phone number
SELECT uname, email, pnumber 
FROM Reader;



