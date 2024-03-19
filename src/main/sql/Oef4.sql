/*a*/
SELECT *
FROM brewers
WHERE turnover > (SELECT AVG(turnover) from brewers)
ORDER BY turnover DESC ;

/*b*/
SELECT *
FROM beers
WHERE alcohol=(SELECT MIN(alcohol) from beers)
OR    alcohol=(SELECT MAX(alcohol) from beers)
ORDER BY alcohol;

/*c*/
SELECT *
FROM beers
JOIN brewers
    ON beers.brewerid = brewers.id
WHERE beers.alcohol>(SELECT AVG(beers.alcohol) from beers)
AND brewers.turnover>(SELECT AVG(brewers.turnover) from brewers)
ORDER BY alcohol;

/*d
SELECT brewers.name AS brewersname,
       beers.name,
       MAX(beers.price) AS beersprice
FROM brewers
JOIN beers ON brewers.id = beers.brewerid
GROUP BY beers.name, brewers.name;*/






