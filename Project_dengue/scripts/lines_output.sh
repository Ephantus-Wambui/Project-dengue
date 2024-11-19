#!/usr/bin/env bash

# create a dengue fasta files location variable
dengue_fasta_files="../dengueseq*"

# create a for loop that will loop through each file
for i in $dengue_fasta_files

do
	# Count each file the number of lines
	echo "Number of lines in $(basename $i) file:  $(cat $i | wc -l)"

done
