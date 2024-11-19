# Project-dengue

1. How many files are in the zipped file?
#### 5 files
```
Files in zipped file:  dengueseq1.fasta
Files in zipped file:  dengueseq2.fasta
Files in zipped file:  dengueseq3.fasta
Files in zipped file:  dengueseq4.fasta
Files in zipped file:  dengueseq5.fasta
```

2. How many lines are in each file?
```
Number of lines in dengueseq1.fasta file:  42
Number of lines in dengueseq2.fasta file:  115
Number of lines in dengueseq3.fasta file:  94
Number of lines in dengueseq4.fasta file:  113
Number of lines in dengueseq5.fasta file:  157
```
3. How many lines are in all the files combined?
```
wc -l ../dengue_merged.fasta
```
#### 521 lines

4. Merge the files into one file and name it dengue_merged.fasta
```
cat ../dengueseq* > dengue_merged.fasta
```

5. How many headers does the new file have?
```
cat dengue_merged.fasta | grep ">"
```

####>NC_001478.1 Digitaria streak virus, complete genome
####>NC_001479.1 Encephalomyocarditis virus, complete genome
####>NC_001480.1 Eggplant mosaic virus, complete genome
####>NC_001481.2 Feline calicivirus, complete genome
####>NC_001477.1 Dengue virus 1, complete genome

6. How many sequences does the new file have?
### 5 sequences

7. Extract the headers, and put them in a new file called dengue_headers.txt
```
grep ">" dengue_merged.fasta > dengue_headers.txt
```

8. Extract only the names of the viruses, and create a new file called viruses.txt.
```
````

9. Create a file for only the sequences. Name it dengue_seq.txt
```
awk '/^>/ {next} {print}' ../dengue_merged.fasta > ../dengue_seq.txt
```

10. Replace the values in dengue_seq.txt with small letters.
```
awk '/^>/ {next} {print tolower($0)}' ../dengue_merged.fasta > ../dengue_seq_lowercase.txt
```
