-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

Delete
from Reservations
Where  Date > '2022-07-24' and CustomerID = (
  Select CustomerID
  from Customers
  WHERE FirstName = 'Norby')
