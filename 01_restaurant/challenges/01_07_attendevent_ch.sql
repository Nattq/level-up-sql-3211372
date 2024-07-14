-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

INSERT into AnniversaryAttendees ( CustomerID, PartySize) 
VALUES ( 
 (SELECT CustomerID 
    From Customers
    WHERE Email = 'atapley2j@kinetecoinc.com'),
  4)

SELECT * FROM AnniversaryAttendees;