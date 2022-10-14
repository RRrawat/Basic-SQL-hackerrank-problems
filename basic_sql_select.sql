'''
Query all columns for all American cities in CITY with populations larger than 100,000. The CountryCode for America is USA.
Input Format
**Solution**
'''
SELECT * FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 100000;


/*[Revising the Select Query-2](https://www.hackerrank.com/challenges/revising-the-select-query-2)**/
'''
Query the names of all American cities in CITY with populations larger than 120,000. The CountryCode for 
America is USA.
Input Format

The CITY table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17)   |
| COUNTRY CODE  | VARCHAR2(3)  |
| DISTRICT |  VARCHAR2(20) |
| POPULATION | NUMBER |


**Solution**
'''

SELECT NAME FROM CITY WHERE COUNTRYCODE = 'USA' AND POPULATION > 120000;

/**[Select All](https://www.hackerrank.com/challenges/select-all-sql)**/

'''
Query all columns for every row in the CITY table.

Input Format

**Solution**
'''

SELECT * FROM CITY;

/**[Select by ID](https://www.hackerrank.com/challenges/select-by-id)**/

'''
Query all columns for a city in CITY with the ID 1661.

Input Format

The CITY table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| NAME | VARCHAR2(17)   |
| COUNTRY CODE  | VARCHAR2(3)  |
| DISTRICT |  VARCHAR2(20) |
| POPULATION | NUMBER |

**Solution**
'''

SELECT * FROM CITY WHERE ID = 1661; 

/**[Japanese Cities' Detail](https://www.hackerrank.com/challenges/japanese-cities-detail)**/

'''
Query the details for all the Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

**Solution**

'''

SELECT * FROM CITY WHERE COUNTRYCODE = 'JPN';        

/**[Japanese Cities' Name](https://www.hackerrank.com/challenges/japanese-cities-name)**/

'''
Query the the names of all the Japanese cities in CITY. The COUNTRYCODE for Japan is JPN.

**Solution**
'''
SELECT NAME FROM CITY WHERE COUNTRYCODE = 'JPN';        


/**[Weather Observation Station 1](https://www.hackerrank.com/challenges/weather-observation-station-1)**/
'''
Query a list of CITY and STATE from STATION.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

**Solution**
'''

SELECT CITY,STATE FROM STATION;       
'''
/**[Weather Observation Station 3](https://www.hackerrank.com/challenges/weather-observation-station-3)**/

Query a list of CITY names from STATION with even ID numbers only. You may print the results in any order, but must exclude duplicates from your answer.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
'''

SELECT DISTINCT CITY FROM STATION WHERE MOD(ID,2)=0 ORDER BY CITY ASC;

'''
###**[Weather Observation Station 4](https://www.hackerrank.com/challenges/weather-observation-station-4)**

Let NUM be the number of CITY entries in STATION, and NUMunique be the number of unique cities. Query the value of NUM−NUMunique from STATION.

In other words, query the number of non-unique CITY names in STATION by subtracting the number of unique CITY entries in the table from the total number of CITY entries in the table.

Input Format

The STATION table is described as follows:

|  Field | Type |
|---|---|
| ID  | NUMBER |
| CITY | VARCHAR2(21)   |
| STATE  | VARCHAR2(2)  |
| LAT_N |  NUMBER |
| LONG_W | NUMBER |

where LAT_N is the northern latitude and LONG_W is the western longitude.

**Solution**
'''
SELECT COUNT(CITY) - COUNT(DISTINCT CITY) FROM STATION;       
