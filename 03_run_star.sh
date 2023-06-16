#!/bin/bash

set -euo pipefail

STAR \
    --runThreadN 16 \
    --limitBAMsortRAM 137438953472 \
    --genomeDir ./dm6_star_index/ \
    --readFilesIn SRR21697059_2.fastq.gz SRR21697059_1.fastq.gz \
    --outSAMattributes NH HI AS nM CB UB \
    --readFilesCommand zcat  \
    --outSAMtype BAM SortedByCoordinate \
    --outFileNamePrefix STARsolo_out/sample1. \
    --soloType CB_UMI_Simple \
    --soloCBwhitelist celseq_barcodes.192.1col.txt \
    --soloUMIstart 1 --soloUMIlen 6 --soloCBstart 7 \
    --soloCBlen 6 --soloBarcodeReadLength 0 --soloCBmatchWLtype Exact \
    --soloStrand Forward --soloUMIdedup Exact

STAR \
    --runThreadN 16 \
    --limitBAMsortRAM 137438953472 \
    --genomeDir ./dm6_star_index/ \
    --readFilesIn SRR21697060_2.fastq.gz SRR21697060_1.fastq.gz \
    --outSAMattributes NH HI AS nM CB UB \
    --readFilesCommand zcat  \
    --outSAMtype BAM SortedByCoordinate \
    --outFileNamePrefix STARsolo_out/sample2. \
    --soloType CB_UMI_Simple \
    --soloCBwhitelist celseq_barcodes.192.1col.txt \
    --soloUMIstart 1 --soloUMIlen 6 --soloCBstart 7 \
    --soloCBlen 6 --soloBarcodeReadLength 0 --soloCBmatchWLtype Exact \
    --soloStrand Forward --soloUMIdedup Exact
