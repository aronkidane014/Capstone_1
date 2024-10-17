UPDATE tailorshop
SET DueDate = REPLACE(DueDate, '/', '-')
WHERE DueDate LIKE '%/%';
UPDATE tailorshop
SET `Date` = REPLACE(`Date`, '/', '-')
WHERE `Date` LIKE '%/%';

UPDATE tailorshop
SET `Date` = STR_TO_DATE(`Date`, '%d-%m-%Y')
WHERE `Date` LIKE '%-%';

update tailorshop 
set DueDate = str_to_date(DueDate, '%d-%m-%Y')
where DueDate like '%-%';
