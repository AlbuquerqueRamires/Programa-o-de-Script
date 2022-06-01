#!/bin/bash
DATA=$(date +"%Y-%m-%d-%H-%M")
mkdir /tmp/$DATA
cp ${PWD}/* /tmp/$DATA
