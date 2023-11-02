#!/bin/bash

#this script takes VAR (one SRA) from bulk_process.sbatch output and runs the desired Snakefile
#it currently processed 3 SRAs at a time, to adjust this go into the .sbatch file

sra=$VAR
echo $sra

module load Anaconda3/2021.05
source activate /home/migun/.conda/envs/resp2virus-env

workflow_dir=/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows
out_dir=/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/ebola_samples/$sra

mkdir $out_dir
cd $out_dir

snakemake -s $workflow_dir/Snakefile -p tpms/${sra}_gene_tpm.tsv --cores 8
