# (optional) Create a new namespace
# Create a table by using table.sql
If non-shard environment, remove last 'shard' keyword from Create Table command.

$ iris session iris1 "##class(%SYSTEM.SQL).Shell()"  
[SQL]USER>>  [paste Create Table command here]

# Download a csv jdbc driver and CSV file
///
$ ./download.sh
///
# Install JVM (if it's not already)
///
$ sudo apt-get install -y openjdk-8-jre-headless  
or  
$ sudo yum install -y java-1.8.0-openjdk-headless
///
# Create log directory
///
$ mkdir log  
///
# Run Native CSV driver
///
edit green.csv.properties to meet the enviroment
>target.host=[host]  
target.port=[port]  
target.namespace=[namespace]  
target.username=[IRIS Username]  
target.password=[password]  
target.table=green_tripdata
///

edit runCSV.sh so that IRISJAR points to the right jar file  
///
$ ./runCSV.sh green.csv.properties
(Windows) runCSV.bat green.csv.properties
///
# Run CsvJdbc Driver
///
edit green.drv.properties to meet the enviroment  
edit runDrv.sh so that IRISJAR points to the right jar file  
$ ./runDrv.sh green.drv.properties
///
# Info
For more options, please visit   
https://irisdocs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=BJAVA_bulkload
