# human_response_path_viruses
processing and storing RNA-seq datasets for input to a ML algorithm

## Workflow description
After a biorproject that has relevant datasets have been identified, a metadata table that contains detailed run information is obtained from SRA. All the SRR runs are then extracted from the table


## Installation instruction for running snakemake workflow
This installation assumes you have conda installed and in path.
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
