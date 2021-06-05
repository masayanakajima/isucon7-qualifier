#!/bin/bash


# usage
# sh gzip.sh {gzipしたいディレクトリ}

for file in `ls $1`; do
	gzip -c $1/$file > $file.gz
	mv $1/$file $1/$file.tmp:
	mv $file.gz $1/$file.gz
done