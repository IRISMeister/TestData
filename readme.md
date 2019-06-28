# create a table by using table.sql
# download a csv jdbc driver and CSV file
./download.sh
# install JVM (if it's not already)
sudo apt-get install -y openjdk-8-jre-headless

# Run Native CSV driver
./runCSV.sh green.csv.properties
# Run CsvJdbc Driver
./runDrv.sh green.drv.properties
