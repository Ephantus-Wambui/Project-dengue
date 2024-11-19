#!/usr/bin/env bash

dengue_txt="../dengue_seq.txt"

awk '/^>/ {next} {print tolower($0)}' $dengue_txt > ../dengue_seq_lowercase.txt
