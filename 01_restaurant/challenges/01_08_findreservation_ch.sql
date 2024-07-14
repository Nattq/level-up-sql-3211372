-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.
SELECT Reservations.CustomerID, Reservations.ReservationID
FROM Reservations
JOIN Customers ON Customers.CustomerID = Reservations.CustomerID
WHERE Customers.LastName LIKE 'St%' and Reservations.PartySize = 4 and Reservations.Date > '2022-06-14'