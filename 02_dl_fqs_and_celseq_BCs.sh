#!/bin/bash

set -euo pipefail

# Barcodes
wget https://raw.githubusercontent.com/vari-bbc/scRNAseq/main/whitelists/cellseq192/celseq_barcodes.192.1col.txt
wget https://raw.githubusercontent.com/vari-bbc/scRNAseq/main/whitelists/cellseq192/celseq_barcodes.192.txt

# Fastqs
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR216/059/SRR21697059/SRR21697059_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR216/059/SRR21697059/SRR21697059_2.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR216/060/SRR21697060/SRR21697060_1.fastq.gz

wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/SRR216/060/SRR21697060/SRR21697060_2.fastq.gz
