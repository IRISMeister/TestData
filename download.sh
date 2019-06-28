#!/bin/bash
curl https://jaist.dl.sourceforge.net/project/csvjdbc/CsvJdbc/1.0-35/csvjdbc-1.0-35.jar -o csvjdbc-1.0-35.jar
curl https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-01.csv | sed  '/^.$/d' > green_tripdata_2016-01.csv

