#!/usr/bin/env bash

files=("newcut.txt" "newfile.txt" "newoutput.txt")
for i in "${files[@]}"; do
	if  [ -e "${i}" ]; then
		echo "${i} exists."
	else
		echo "${i} does not exist."
	fi

done
