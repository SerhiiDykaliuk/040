#!/bin/bash
host=("$@")
# echo scaning host $host
for i in "${host[@]}"; do nc -zv -w 1 $i 80 2>&1 \
       	| grep succeeded \
       	| awk '{print $3} "succeeded"'; done
for i in "${host[@]}"; do nc -zv -w 1 $i 443 2>&1 \
        | grep succeeded \
        | awk '{print $3} "succeeded"'; done

