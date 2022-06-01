#!/bin/bash
DATA=$(date +"%Y-%m-%d-%H-%M")
mkdir /tmp/$DATA
cp ${PWD}/* /tmp/$DATA
tar -cvf $DATA.tar /tmp/$DATA
rm -r /tmp/$DATA
