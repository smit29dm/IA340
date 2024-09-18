--4.1
/*No, because you cannot delete the primary key from the table when it is used as foreign keys in other tables in the database.*/
--4.2
/* No, because there are no records of '80' present in the fips*/
--4.3
/* They are fine, but not necessarily perfect or the best way.*/
--4.5
/*Yes, chatgpt recognizes my ERD*/


--4.6
/* It works perfectly*/
SELECT n.name, i.income, i.year
FROM name n
JOIN income i ON n.fips = i.fips
WHERE i.year = (
    SELECT MAX(year) FROM income
)
ORDER BY i.income DESC
LIMIT 1;
