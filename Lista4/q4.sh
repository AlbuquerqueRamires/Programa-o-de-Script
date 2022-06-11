#!/bin/bash
sed -E 's/[0-9]{1,3}(\.[0-9]{1,3}){3}/**!!CEN-SU-RA-DO!!**/g' $1
