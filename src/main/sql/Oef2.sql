/*a*/
SELECT COUNT(brewers.id) as number_of_brewers
FROM brewers;

/*b*/
SELECT AVG(brewers.turnover) as gemiddelde_turnover
FROM brewers;

/*c*/
SELECT MIN(beers.alcohol) as min,
       AVG(beers.alcohol) as mid,
       MAX(beers.alcohol) as max
FROM beers;

/*d*/
SELECT AVG(brewers.turnover) as gemiddelde_turnover
FROM brewers
WHERE zipcode LIKE '1%'
AND brewers.name NOT IN('Palm');

/*e*/
SELECT brewerid, AVG(beers.alcohol) as avg_alcohol
FROM beers
GROUP BY brewerid;

/*f*/
SELECT categoryid, MAX(beers.price) as max_price
FROM beers
WHERE beers.price>3
AND beers.stock>0
GROUP BY categoryid;
