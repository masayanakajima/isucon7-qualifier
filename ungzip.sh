#!/bin/bash


# usage
# sh gzip.sh {gzipしたいディレクトリ}

for file in `ls $1`; do
	gunzip $1/$file.gz
done