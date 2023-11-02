#! /usr/bin/env/python

from doctest import OutputChecker
import os
import fnmatch
from email.quoprimime import header_decode
from pickle import BINSTRING
from re import L, X
import readline
import csv
import pandas as pd

av_dir="/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/ebola_samples"
file_list=[]

#create file with only gene names
with open ("/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/ebola_samples/SRR9003933/tpms/SRR9003933_gene_tpm.tsv", 'r') as f_in:
    with open ('names_ony.txt', 'w') as f_out:
        gene_names=[]
        for line in f_in:
            gene=line.split('\t')[0]
            gene_names.append(gene)    
            f_out.write(f'{gene}\n')
    with open ('names_ony.txt', 'r') as names:
        df=pd.read_csv(names, sep='\t')
        file_list.append(df)

#create dataframe where first column is gene id, then 1 column per SRR/CRR and TPM
for ref in os.listdir(av_dir):
    if os.path.exists(f'{av_dir}/{ref}/tpms/{ref}_gene_tpm.tsv'):
        file=f'{av_dir}/{ref}/tpms/{ref}_gene_tpm.tsv'
        with open (file, 'r') as tpm_in:
            data=tpm_in.read()
        data=data.replace("TPM", ref)
        with open(file, 'w') as tpm_out:
            tpm_out.write(data)
        df=pd.read_csv(file, sep='\t', usecols=[ref])
        file_list.append(df)

#write out TPM df to tsv where row name=gene id
all_tpms=pd.concat(file_list, ignore_index=False, axis=1)
all_tpms=all_tpms.set_index('id')
all_tpms.to_csv("apr102023_ebola_all_tpm.tsv", sep="\t")
