-- Prepare a report of the library patrons
-- who have checked out the fewest books.

SELECT Count(LoanID) as AmountCheckedOut, Patrons.FirstName, Patrons.Email
FROM Loans
JOIN Patrons ON Loans.PatronID = Patrons.PatronID
GROUP BY Patrons.PatronID