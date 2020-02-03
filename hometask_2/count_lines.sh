#!/bin/bash
# showing whitch string repeating more times than other in file
# wget --no-check-certificate http://yoko.ukrtux.com:8899/versions.txt
# uncoment previus line if need to download versions.txt automaticly
# echo "result:"
# uncoment previus line if needed to show explaining word "result" before output
sort versions.txt \
	| uniq -c \
	| sort -n \
	| tail -n 1

# !!! maybe need add wget (see string 3-4)
