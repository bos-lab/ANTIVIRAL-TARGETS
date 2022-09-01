#!/usr/bin/env python

"""
TPM calculation is based on

https://btep.ccr.cancer.gov/question/faq/what-is-the-difference-between-rpkm-fpkm-and-tpm/#:~:text=Here's%20how%20you%20calculate%20TPM,divide%20this%20number%20by%201%2C000%2C000.

Formula here too: https://www.ncbi.nlm.nih.gov/pmc/articles/PMC7373998/
"""

import csv
import click

@click.group()
def cli():
    pass


###---------------------------------------------------------------------------------------------------#####
@cli.command("tpm", short_help="generates the multi panel figure for all vendors")

@click.option("--in_file", "-i", type=click.Path(), help="input file, output of featurecount")
@click.option("--out_file", "-o", type=click.Path(), help="two column file. Feature name and TPM")


def tpm(in_file, out_file):
    """A function that calculates TPM for every row"""
    print(in_file)
    with open(in_file) as csv_file:
        next(csv_file)
        next(csv_file)
        csv_reader1 = csv.reader(csv_file, delimiter='\t')
        all_rpk = []
        with open(".intermediate_file.csv", mode='w') as int_file:
            int_writer = csv.writer(int_file, delimiter=',')
            for row in csv_reader1:
                if len(row) == 7:
                    read_count = int(row[6])
                    feat_length_kb = float(row[5])/1000
                    rpk = read_count/feat_length_kb
                    row.append(rpk)
                    int_writer.writerow(row)
                    all_rpk.append(rpk)
                else:
                    print(row)
                    pass
        rpk_sum = sum(all_rpk)
        per_mil_scale = rpk_sum/1e6
    with open('.intermediate_file.csv') as int_file:
        csv_reader2 = csv.reader(int_file, delimiter=",")
        with open(out_file, mode='w') as out_f:
            out_writer = csv.writer(out_f, delimiter=',')
            for row in csv_reader2:
                tpm = float(row[7])/per_mil_scale
                row.append(tpm)
                row1 = [row[0],round(row[8],3)]
                out_writer.writerow(row1)
           
if __name__ == "__main__":
    cli()