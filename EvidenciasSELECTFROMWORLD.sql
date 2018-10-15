## SELECT FROM WORLD
-- #01.- Observe the result of running this SQL command to show the name, continent and population of all countries.
SELECT name, continent, population FROM world


-- #02.- Show the name for the countries that have a population of at least 200 million. 200 million is 200000000, there are eight zeros.
SELECT name FROM world
WHERE population >= 200000000


-- #03.- Give the name and the per capita GDP for those countries with a population of at least 200 million.
SELECT name, gdp/population
From world
WHERE population>200000000


-- #04.- Divide the population by 1000000 to get population in millions.
SELECT name, population/1000000 FROM world
WHERE continent LIKE 'South America'


-- #05.- Show the name and population for France, Germany, Italy.
SELECT name country, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')
 
 
-- #06.- Show the countries which have a name that includes the word 'United'
SELECT name FROM world
Where name LIKE 'united%'
 
 
-- #07.- Show the countries that are big by area or big by population. Show name, population and area.
SELECT name, population, area from world
WHERE population>250000000 or area >3000000


-- #08.- Show name, population and area.


-- #09.- For South America show population in millions and GDP in billions both to 2 decimal places.
SELECT name, ROUND(population/1000000,2),
ROUND(gdp/1000000000,2)
From world
Where continent = 'South America'


-- #10.- Show per-capita GDP for the trillion dollar countries to the nearest $1000.
SELECT name, ROUND(gdp/population,-3)
  FROM world
  WHERE
  gdp>1000000000000


-- #11.- Show the name and capital where the name and the capital have the same number of characters.

-- #12.- Show the name and the capital where the first letters of each match.

-- #13.- Find the country that has all the vowels and no spaces in its name.

