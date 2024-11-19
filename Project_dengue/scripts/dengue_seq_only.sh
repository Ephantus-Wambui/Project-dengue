#!/usr/bin/env bash

dengue_fasta_files="../dengueseq*"

awk '/^>/ {next} {print}' $dengue_fasta_files > ../dengue_seq.txt
