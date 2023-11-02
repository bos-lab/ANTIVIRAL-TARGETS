#!/bin/bash
#SBATCH --time 240:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=14
#SBATCH --job-name=macfas_snake
#SBATCH --account=andreas_mtz
#SBATCH --partition=tb
#SBATCH --output=macfas_unmapped.out

module load Anaconda3/2021.05
source activate /home/migun/.conda/envs/resp2virus-env


#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630527_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630528_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630529_paired.fastq --cores 28
snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630530_unpaired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630531_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630532_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630533_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630534_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630535_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630536_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630537_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630538_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630539_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630540_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630541_paired.fastq --cores 28
snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630542_unpaired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630543_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630544_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630545_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630546_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630547_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630548_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630549_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630550_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630551_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630552_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630553_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630554_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630555_paired.fastq --cores 28
snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630556_unpaired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630557_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630558_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630559_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630560_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630561_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630562_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630563_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630564_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630565_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630566_paired.fastq --cores 28
#snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630567_paired.fastq --cores 28
snakemake -s /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/workflows/Snakefile_macfas_unmapped -p unmapped_reads/SRR5630568_unpaired.fastq --cores 28
