#!/usr/bin/env bash

echo "What is your protein filename: "
read input_file
echo "Enter the amino acid residue to count: "
read amino_acid

count=0

while read -r line; do
 if [[ "${line}" !=  ">" ]]; then
        for (( i=0; i<${#line}; i++ ));
        do
        character="${line:i:1}"
                if [[ "${character}" == "${amino_acid}" ]]; then
                count=$((count + 1 ))
                fi
        done
 fi

done < "$input_file"
echo "The amino acid '${amino_acid}' occurs '${count}' times."

