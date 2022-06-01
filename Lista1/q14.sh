#!/bin/bash
cat $1 | sed -n -e $2p
