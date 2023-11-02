#!/usr/bin/env python

import os
import gzip

#directory of fastas to count
dir = "/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/ebola/ebola_samples/PRJNA476001_macmul/raw_srr"

# get directory name
dir_name = os.path.basename(dir)

#output file
output_file = f"{dir_name}_read_counts.txt"

#initialize output file
with open(output_file, 'w') as f:
    f.write("File Name\tRead Count\n")

#loop through directory
for file in os.listdir(dir):
    if file.endswith(".fasta") or file.endswith(".fastq") or file.endswith(".fastq.gz"): #open only fastas, fastqs, or gzipped fastqs
        try:
            if file.endswith(".fastq.gz"):
                with gzip.open(os.path.join(dir, file), 'rt') as f:
                    read_counts = sum(1 for line in f if line.startswith("@")) #count only lines starting with @ for fastq files
            else:
                with open(os.path.join(dir, file), 'r') as f:
                    if file.endswith(".fastq"):
                        read_counts = sum(1 for line in f if line.startswith("@")) #count only lines starting with @ for fastq files
                    else:
                        read_counts = sum(1 for line in f if line.startswith(">")) #count 

            folder_name=os.path.basename(os.path.dirname(os.path.join(dir, file))) #get our folder name from the full path
            with open(output_file, 'a') as f:
                f.write(f"{file}\t{read_counts}\n")
        except EOFError:
            print(f"Warning: {file} is corrupted and was skipped.")
