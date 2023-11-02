#!/bin/bash
#SBATCH --time 240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=7
#SBATCH --job-name=count_reads
#SBATCH --account=andreas_mtz
#SBATCH --partition=fast
#SBATCH --output=count_reads2.out



python /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/scripts/count_read_length_2.py