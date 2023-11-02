#!/bin/bash
#SBATCH --time 240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=8
#SBATCH --job-name=hisat2_ebov
#SBATCH --account=andreas_mtz
#SBATCH --partition=fast
#SBATCH --output=ebov_hisat2_ebov.out


hisat2-build -p 4 /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/data/virus_genomes/other_human_viruses/other_virus_sequences.fasta genome
