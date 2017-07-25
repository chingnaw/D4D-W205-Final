#!/usr/bin/env bash

rm -r edited
mkdir edited

for file in *.csv; do
	python single_header.py "$file"
done