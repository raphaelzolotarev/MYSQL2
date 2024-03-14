/*a*/
SELECT beers.name, categories.category
FROM beers
JOIN categories
    ON beers.categoryid=categories.id
WHERE beers.alcohol=0;

/*b*/
SELECT brewers.name, max(beers.price) as max_price
FROM beers
JOIN brewers
   ON beers.brewerid=brewers.id
GROUP BY brewers.name
ORDER BY brewers.name;

/*c*/
SELECT id,name
FROM beers
WHERE id BETWEEN 1500 AND 1600;

/*d*/
SELECT beers.id, beers.name, MAX(beers.alcohol) as max_alcohol, brewers.name, categories.category
FROM beers
 JOIN  brewers
    ON beers.brewerid = brewers.id
JOIN categories
    ON beers.categoryid = categories.id
GROUP BY categories.category, beers.id
ORDER BY max_alcohol DESC
limit 4;



SELECT beers.Id, beers.Name, brewers.Name AS BrewerName, categories.Category AS CategoryName
FROM beers
         INNER JOIN brewers  ON beers.BrewerId = brewers.Id
         INNER JOIN categories ON beers.CategoryId = categories.Id
ORDER BY beers.Alcohol DESC
LIMIT 4;