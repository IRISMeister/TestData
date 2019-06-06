#!/bin/bash
sudo apt-get install -y openjdk-8-jre-headless
curl -o green_tripdata_2016-01.csv https://s3.amazonaws.com/nyc-tlc/trip+data/green_tripdata_2016-01.csv
export IRISJAR=/usr/local/iris/dev/java/lib/JDK18

