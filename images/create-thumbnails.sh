#!/bin/bash
for i in *.{jpg,png} ; do
	echo "Saving thumbnail $i"
	convert -thumbnail 150 $i ./thumbnails/$i
done
