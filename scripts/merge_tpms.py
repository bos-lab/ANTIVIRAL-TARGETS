#!/usr/bin/env python

import pandas as pd
import os

# Set the parent directory and output file name
parent_dir = os.path.dirname(os.getcwd())
output_filename = os.path.join(parent_dir, "all_tpms.tsv")

# Get a list of all TSV files in the parent directory and its subdirectories
tsv_list = []
for dirpath, dirnames, filenames in os.walk(parent_dir):
    for file in filenames:
        if file.endswith('tpm.tsv'):
            tsv_list.append(os.path.join(dirpath, file))

# Initialize an empty DataFrame to store the merged data
merged_df = pd.DataFrame()

# Loop through the TSV files and merge them
for file in tsv_list:
    # Read the TSV file into DataFrame
    tsv_df = pd.read_csv(file, sep='\t')

    # Rename the 'TPM' column to include the file name
    tsv_df = tsv_df.rename(columns={'TPM': f'TPM_{os.path.basename(file)}'})

    # Merge the TSV DataFrame with the merged DataFrame
    if merged_df.empty:
        merged_df = tsv_df
    else:
        merged_df = pd.merge(merged_df, tsv_df, on='id', how='outer')

# Save the merged DataFrame to a TSV file
merged_df.to_csv(output_filename, sep='\t', index=False)

