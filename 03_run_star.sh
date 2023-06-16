#!/bin/bash

set -euo pipefail

sample=$1
fq1=$2
fq2=$3
threads=$4

STAR \
    --runThreadN $threads \
    --limitBAMsortRAM 137438953472 \
    --genomeDir ./dm6_star_index/ \
    --readFilesIn $fq2 $fq1 \
    --outSAMattributes NH HI AS nM CB UB \
    --readFilesCommand zcat  \
    --outSAMtype BAM SortedByCoordinate \
    --outFileNamePrefix "STARsolo_out/${sample}." \
    --soloType CB_UMI_Simple \
    --soloCBwhitelist celseq_barcodes.192.1col.txt \
    --soloUMIstart 1 --soloUMIlen 6 --soloCBstart 7 \
    --soloCBlen 6 --soloBarcodeReadLength 0 --soloCBmatchWLtype Exact \
    --soloStrand Forward --soloUMIdedup Exact 1> "star_${sample}.o" 2> "star_${sample}.e"

