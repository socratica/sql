This repository contains a variety of datasources used by Socratica in our YouTube videos at https://www.youtube.com/Socratica.  The Python and SQL videos make heavy use of these datasets.

Below are the datasources along with the Playlist / Video that uses the data.

earthquakes.csv:
  - SQL / SELECT (Part 1)

## To import into MySQL:

1. Import the file earthquakes.sql into adminer/phpmyadmin/ any other GUI that you use.

    ### OR
1. Create a database called earthquake:
```
CREATE DATABASE earthquake
```
2. Create a table called earthquakes with the relevant columns

```
CREATE TABLE `earthquakes` (
  `earthquake_id` int(11) NOT NULL,
  `occurred_on` datetime NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `depth` double NOT NULL,
  `magnitude` double NOT NULL,
  `calculation_method` varchar(512) NOT NULL,
  `network_id` varchar(512) NOT NULL,
  `place` varchar(512) NOT NULL,
  `cause` varchar(512) NOT NULL
)
```

3. Run the following command:

```
mysqlimport --ignore-lines=1 --fields-terminated-by=, --fields-optionally-enclosed-by=\" --local -u root -p 
earthquake earthquakes.csv
```
