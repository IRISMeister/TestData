#!/bin/bash
source envs.sh
java -Dfile.encoding=UTF-8 -cp $IRISJAR/intersystems-utils-3.0.0.jar:$IRISJAR/intersystems-jdbc-3.0.0.jar:$IRISJAR/intersystems-xep-3.0.0.jar com.intersystems.datatransfer.SimpleMover p=$1
