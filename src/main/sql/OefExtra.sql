USE thebelgianbrewerydb;

/*1*/
SELECT DISTINCT alcohol as alle_alcohol_percentage
FROM beers
ORDER BY alcohol DESC;

/*2*/
SELECT brewers.city, COUNT(brewers.name) AS number_of_brewers
FROM brewers
GROUP BY brewers.city
ORDER BY number_of_brewers DESC;

/*3*/
SELECT beers.name as all_beers_from_Alken
FROM beers
JOIN brewers
    ON beers.brewerid = brewers.id
WHERE brewers.name = 'Alken';

/*4*/
SELECT brewers.name as brewer_name, AVG(beers.price) as average_price
FROM brewers
JOIN beers
    ON brewers.id = beers.brewerid
GROUP BY brewers.name
ORDER BY brewers.name;

/*5*/
SELECT brewers.name as brewer_name, COUNT(beers.name) number_of_beer
FROM brewers
JOIN beers
    ON brewers.id = beers.brewerid
GROUP BY brewers.name
ORDER BY number_of_beer;

/*6*/
SELECT brewers.name as brewer_name, categories.category
FROM beers
JOIN brewers
    ON beers.brewerid = brewers.id
JOIN categories
     ON beers.categoryid = categories.id
GROUP BY brewers.name, categories.category
HAVING category IN('Alcoholarm', 'Alcoholvrij')
ORDER BY brewer_name;


