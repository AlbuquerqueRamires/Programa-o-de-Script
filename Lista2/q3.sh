#!/bin/bash
if [ -f $1 -a $(wc -l < $1) -gt 3 ];then
       echo "GOOD"
fi       
