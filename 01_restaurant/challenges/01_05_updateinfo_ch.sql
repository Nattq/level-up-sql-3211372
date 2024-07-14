-- Update a customer's contact information.

-- Taylor Jenkins, of 27170 6th Ave., Washington, DC,
-- has moved to 74 Pine St., New York, NY.

UPDATE Customers
Set Address = '75 Pine St.', City = 'New York', State = 'NY'
WHERE CustomerID = (
Select CustomerID FROM Customers
WHERE FirstName = 'Taylor' and LastName ='Jenkins' and Address = '74 Pine St.' and City = 'New York'and State = 'NY');

SELECT Address, CustomerID from Customers
WHERE CustomerID = 26;