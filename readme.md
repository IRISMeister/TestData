# (optional) Create a new namespace
# Adjust to your environment
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
SimpleMover requires a table definition prior to running.  
If you want to create a shard table, please edit createtable.txt and add ",shard" at the end of the first CREATE TABLE command.
```
(optional) $ vi createtable.txt
    Trip_type varchar(10)
    , shard
);
```

And then, execute createtable.sh.  
```
$ ./createtable.sh
```

# Download a CSV file

```
$ ./download.sh
```
This will download open data published [here](https://www1.nyc.gov/site/tlc/about/data.page).

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
# Tune tables
Don't forget to run TuneTable!
```
$ ./tunetable.sh
```

# Info
For more options, please visit   
https://docs.intersystems.com/irislatest/csp/docbook/DocBook.UI.Page.cls?KEY=ABULKLOAD
