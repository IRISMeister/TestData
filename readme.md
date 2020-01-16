# (optional) Create a new namespace
# Adjust to environment
Assuming 
- IRIS user/pass are _SYSTEM/sys
- instace name is iris
- namespace is bigdata
- IRIS JAR files are located at /usr/irissys/dev/java/lib/JDK18

If they are not, edit lines of envs.sh to refelect your environment.  
```
(optional) $ vi envs.sh
```
# Create a target table
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

Run it.  
```
$ ./runCSV.sh green.csv.properties
(Windows) > runCSV.bat green.csv.properties
```
# To run CsvJdbc Driver
Edit green.drv.properties to meet the enviroment.  
Run it.  
```
$ ./runDrv.sh green.drv.properties
```
# Tune tables
Don't forget to run TuneTable!
```
$ ./tunetable.sh
```


# Info
For more options, please visit   
https://irisdocs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=BJAVA_bulkload
