# (optional) Create a new namespace
# Create a target table
Assuming 
- IRIS user/pass are _SYSTEM/sys
- instace name is iris
- namespace is bigdata

If they are not, edit first four lines of createtable.sh to refelect your environment.  
```
(optional) $ vi createtable.sh
```
SimpleMover requires a table definition prior to running.  Just run createtable.sh.  
If non-shard environment, please edit createtable.txt and remove ",shard" from the first CREATE TABLE command.

```
(optional) $ vi createtable.txt
$ ./createtable.sh
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
$ vi green.csv.properties
target.host=[host]  
target.port=[port]  
target.namespace=[namespace]  
target.username=[IRIS Username]  
target.password=[password]  
target.table=green_tripdata
```

Edit runCSV.sh so that IRISJAR points to the right jar file path.  
Run it
```
$ vi runCSV.sh
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
