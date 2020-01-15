# (optional) Create a new namespace
# Create a target table
Edit first two lines of createtable.txt and/or createtable_no_shard.txt to refelect your environment.  
```
$ vi createtable.txt
```
SimpleMover requires a table definition prior to running.  Assuming you are using namespace 'bigdata'
```
$ iris session iris -U bigdata "##class(%SYSTEM.SQL).Shell()" < createtable.txt
```
If non-shard environment, please use createtable_no_shard.txt instead.
```
$ iris session iris -U bigdata "##class(%SYSTEM.SQL).Shell()" < createtable_no_shard.txt
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
Edit green.csv.properties to meet the enviroment.
```
target.host=[host]  
target.port=[port]  
target.namespace=[namespace]  
target.username=[IRIS Username]  
target.password=[password]  
target.table=green_tripdata
```

Edit runCSV.sh so that IRISJAR points to the right jar files.  
Run it
```
(Linux) $ ./runCSV.sh green.csv.properties
(Windows) > runCSV.bat green.csv.properties
```
# To run CsvJdbc Driver
Edit green.drv.properties to meet the enviroment.  
Edit runDrv.sh so that IRISJAR points to the right jar files.  
Run it  
```
(Linux) $ ./runDrv.sh green.drv.properties
```
# Info
For more options, please visit   
https://irisdocs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=BJAVA_bulkload
