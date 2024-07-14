-- Create two reports about book statistics.

-- Report 1: Show how many titles were published 
-- in each year.

-- Report 2: Show the five books that have been
-- checked out the most.

SELECT Count(Title) as Count, Published
FROM Books
GROUP BY Published
ORDER BY Published

SELECT Count(Loans.BookID) as Count, Loans.BookID, Books.Title
from Loans
JOIN Books ON Loans.BookID = Books.BookID
GROUP BY Books.BookID
ORDER BY COUNT DESC
Limit 5