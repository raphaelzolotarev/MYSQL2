/*a*/
SELECT * FROM categories
         LIMIT 38;

/*b*/
SELECT category
    FROM categories
    ORDER BY category ASC
    LIMIT 38;

/*c*/
SELECT * FROM brewers
         WHERE turnover>5000
         LIMIT 54;

/*d*/
SELECT name, city FROM brewers
         WHERE turnover<5000
         AND turnover>0
         ORDER BY turnover ASC;

/*e*/
SELECT DISTINCT alcohol
    FROM beers
    ORDER BY alcohol DESC
    LIMIT 14;

/*f*/
SELECT DISTINCT name
    FROM beers
    WHERE name LIKE '%wit%'
    ORDER BY name ASC;

/*g*/
SELECT * FROM beers
         WHERE alcohol BETWEEN 3 AND 7
         LIMIT 568;

/*h*/
SELECT * FROM beers
         ORDER BY alcohol DESC
         LIMIT 3;

/*i*/
SELECT name,
       address,
       CONCAT(city, ' ', zipcode) as city_zip
       FROM brewers;

