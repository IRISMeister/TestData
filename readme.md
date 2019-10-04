# (optional) Create a new namespace
# Create a target table
If non-shard environment, edit createtable.txt and remove last 'shard' keyword from Create Table command.
SimpleMover requires a table definition prior to running.  Assuming you are using namespace 'bigdata',
```
$ iris session iris -U bigdata "##class(%SYSTEM.SQL).Shell()" < createtable.txt
```

# Download a csv jdbc driver and CSV file
```
$ ./download.sh
```
# Install JVM (if it's not already)
```
$ sudo apt-get install -y openjdk-8-jre-headless  
or  
$ sudo yum install -y java-1.8.0-openjdk-headless
```
# To run Native CSV driver
```
edit green.csv.properties to meet the enviroment
target.host=[host]  
target.port=[port]  
target.namespace=[namespace]  
target.username=[IRIS Username]  
target.password=[password]  
target.table=green_tripdata
```

edit runCSV.sh so that IRISJAR points to the right jar file  
```
(Linux) $ ./runCSV.sh green.csv.properties
(Windows) > runCSV.bat green.csv.properties
```
# To run CsvJdbc Driver
edit green.drv.properties to meet the enviroment  
edit runDrv.sh so that IRISJAR points to the right jar file  
```
$ ./runDrv.sh green.drv.properties
```
# Info
For more options, please visit   
https://irisdocs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=BJAVA_bulkload
