#!/bin/bash

# ++ Edit here ++
instanceName=iris
namespace=bigdata
user=_SYSTEM
pass=sys
# -- Edit here --

workdir=$(pwd)
userpass=$user'\n'$pass'\n'
/bin/echo -e $userpass'Do $SYSTEM.SQL.DDLImport("Oracle",$USERNAME,"'$workdir'/createtable.txt",,0,"",";",0)\nh\n' > import.scr
/bin/echo -e $userpass'Do $SYSTEM.SQL.TuneSchema("SQLUser",1,1,,,,)\nh\n' > tune.scr

iris session $instanceName -U $namespace < import.scr
