rule fcount_genes:
    input:
        "mapped_reads/{srr}.bam"
    output:
        "fcount_dir/{srr}_gene_fcount.tsv"
    params:
        gtf = "/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/data/genome.gtf"
    shell:
        "featureCounts -a {params.gtf} -g gene_id -t gene -o {output} {input}"

rule calc_tpm:
    input:
        "fcount_dir/{srr}_gene_fcount.tsv"
    output:
        "tpms/{srr}_gene_tpm.tsv"
    shell:
        "python /panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/scripts/rna-score-calc.py tpm -i {input} -o {output}"

# Replace full path with YML files