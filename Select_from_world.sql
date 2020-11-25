--  Show the name for the countries that have a population of at least 200 million

SELECT name FROM world
WHERE population >= 200000000

-- Give the name and the per capita GDP for those countries with a population of at least 200 million.

SELECT name, GDP/population
FROM world
WHERE population >= 200000000

-- Show the name and population in millions for the countries of the continent 'South America'

SELECT name, population/1000000
FROM world
WHERE continent IN ('South America')

-- Show the name and population for France, Germany, Italy

SELECT name, population
FROM world
WHERE name IN ('France', 'Germany', 'Italy')

--Show the countries which have a name that includes the word 'United'

SELECT name country
FROM world
WHERE name LIKE ('%United%')

--Show the countries that are big by area or big by population. Show name, population and area.

SELECT name, population, area
FROM world
WHERE area > 3000000 OR population > 250000000

-- Show the name and the population for 'Sweden', 'Norway' and 'Denmark'.

SELECT name, population FROM world
  WHERE name IN ('Brazil', 'Russia', 'India', 'China');

-- show the country and the area for countries with an area between 200,000 and 250,000.

SELECT name, area FROM world
  WHERE area BETWEEN 250000 AND 300000

-- Show the countries that are big by area (more than 3 million) or big by population (more than 250 million) but not both. Show name, population and area.

SELECT name, population, area
FROM world
WHERE area > 3000000 XOR population > 250000000

-- Show the name and population in millions and the GDP in billions for the countries of the continent 'South America'. Use the ROUND function to show the values to two decimal places.

SELECT name, ROUND(population/1000000,2), ROUND(GDP/1000000000,2)
FROM world
WHERE continent IN ('South America')