#!/bin/bash
source envs.sh
iris session $instanceName -U $namespace < tune.scr
