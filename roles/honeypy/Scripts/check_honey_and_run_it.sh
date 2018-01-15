#!/bin/bash


Check_Script="Honey.py"
TargetFolder=$1
echo $TargetFolder
if [ -z "$(pgrep -a python |grep $Check_Script)" ]; then
	    echo "not running"
	    python "$($TargetFolder)"
    else
	    echo "running $(pgrep -a python |grep $Check_Script|awk '{print $1}')"
	fi

