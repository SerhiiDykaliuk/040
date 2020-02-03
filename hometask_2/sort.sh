#!/bin/bash
# sorting file strings
# wget --no-check-certificate http://yoko.ukrtux.com:8899/versions.txt
# uncoment previus line if need to download versions.txt automaticly

sort -V versions.txt \
	| less


