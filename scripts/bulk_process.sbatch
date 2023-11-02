#!/bin/bash
#SBATCH --time 240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --job-name=sample_process
#SBATCH --account=migun
#SBATCH --partition=fast
#SBATCH --output=slurm_bulk_out/%a-%x-%j.out

#SBATCH --array=0-276%3

#this script sends 3 processing jobs at a time to Canopus using file of SRAs as input

sra_file=/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/ebola_samples/sras.txt
slurm_out=/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/results/ebola_samples/slurm_bulk_out

#create VAR that sample_process.sh will use as inputs (SRAs)
cat $sra_file > var.txt

readarray -t VARS < var.txt
VAR=${VARS[$SLURM_ARRAY_TASK_ID]}
export VAR

#run script containing snakemake command using VAR as input
./sample_process.sh

#rename slurm_output files according to input SRA
array=($(ls $slurm_out))
mapfile -t array < "var.txt"

for file in $slurm_out/*; do
        new_name=($(head -1 $file 2> /dev/null))
        mv "$file" "$slurm_out/${new_name}" 2> /dev/null

done
