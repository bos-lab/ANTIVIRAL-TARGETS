rule pair_read_map:
    input:
        fq1 = "qc_reads/{srr}/QC.1.trimmed.fastq",
        fq2 = "qc_reads/{srr}/QC.2.trimmed.fastq",
    output:
         "mapped_reads/{srr}.bam"
    params:
        idx = "/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/data/grch38/genome"
    threads: 12
    shell:
        "hisat2 -p {threads} -x {params.idx} -1 {input.fq1} -2 {input.fq2} |  samtools view -Sbh -o {output} "


rule single_read_map:
    input:
        fq1 = "qc_reads/{srr}/QC.1.trimmed.fastq",
        fq2 = "qc_reads/{srr}/QC.2.trimmed.fastq",
    output:
         "mapped_reads/{srr}.bam"
    params:
        idx = "/panfs/biopan04/scratch-migun/ANTIVIRAL-TARGETS/data/grch38/genome"
    threads: 12
    shell:
        "hisat2 -p {threads} -x {params.idx} -1 {input.fq1} -2 {input.fq2} |  samtools view -Sbh -o {output} "