#!/usr/bin/env bash

dengue_fasta_files="../dengueseq*"

awk '/^>/ {next} {print}' ../dengue_merged.fasta > ../dengue_seq.txt
