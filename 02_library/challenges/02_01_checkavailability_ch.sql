-- Determine how many copies of the book 'Dracula'
-- are available for library patrons to borrow.
SELECT
(SELECT Count(Books.BookID) 
FROM Books
WHERE Books.Title = 'Dracula' ) -
(SELECT Count(Books.BookID)
FROM Loans
JOIN Books ON Loans.BookID = Books.BookID
WHERE Books.Title = 'Dracula'  and Loans.ReturnedDate IS NULL)

AS AvailableCopies