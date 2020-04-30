#!/bin/bash
curl https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-01.csv | sed  '/^.$/d' > green_tripdata_2016-01.csv

