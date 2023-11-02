# Discovery of Broad-Spectrum Antiviral Targets from Global Omics Data


## Datasets:
- Human cell lines infected with Influenza virus ()
    - Path to metadata table in this repo:
    - Path to TPM table in this:

- Human cell lines infected with SARS-CoV-2 ().
    - Path to metadata table in this repo: <results/covid/covid_experimental_metadata.csv>
    - Path to TPM table in this repo: results/covid/covid_experimental_metadata.csv
 
-- Mouse and monkey cell lines infected with Ebola virus ().
    - Path to metadata table in this repo: results/ebola/ebola_experiment_metadata.csv
    - Path to TPM tables in this repo: results/ebola/filtered_TPM_macfas.csv.gz
                                       results/ebola/filtered_TPM_macmul.csv.gz
                                       results/ebola/filtered_TPM_musmus.csv.gz




## Methods
### 1. Process relevant human transcriptome data using in-house transcriptomic pipeline. See below


## Transcriptome Workflow description
- Snakemake  workflow.
- Downloads SRR, maps it to human genome using Hisat2, counts the reads per feature using featurecount, and calculates TPMs.


### Installation instruction for running snakemake workflow
This installation assumes you have conda installed and it is in your path.


#### Step 1: Clone the repo.

```
git clone https://github.com/bos-lab/human_response_path_viruses.git
```

#### Step 2: Update or Install the dependencies using following command
```
conda env update --file environment.yml --prune
```

#### Step 3: activate the conda environment

```
conda activate resp2virus-env
```

#### Step 4: Run
```
cd ANTIVIRAL-TARGETS
snakemake -p fcount_dir/SRS3059019_gene_fcount.tsv
```
