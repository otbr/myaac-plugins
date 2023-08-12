#!/bin/bash

# create dir if it doesn't exist
mkdir -p release

FILES=*
for f in $FILES
do
	if [ ! -d $f ]; then
		continue
	fi

	# this checks if the folder name contains release
	if [[ "$f" =~ "release" ]]; then
		continue
	fi

	echo "Processing $f ..."
	cd $f

	if [ -f make-plugin.sh ]; then
		bash make-plugin.sh
	fi

	cp *.zip ../release

	cd ..
done
