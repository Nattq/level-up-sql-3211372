-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).
-- Create a report showing appetizers and beverages.
-- Create a report with all items except beverages.

Select Name, Price 
from Dishes
ORDER BY Price;

Select Name, Price, Type 
from Dishes
WHERE Type = 'Appetizer' or Type = 'Beverage'
ORDER BY Type;

Select Name, Price, Type 
from Dishes
WHERE Type in ('Appetizer', 'Beverage')
ORDER BY Type;

Select Name, Price, Type 
from Dishes
WHERE Type != 'Beverage'
ORDER BY Type