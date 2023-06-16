#!/bin/bash

set -euo pipefail

# Download genome fasta and GTF

wget ftp://ftp.ensembl.org/pub/release-100/fasta/drosophila_melanogaster/dna/Drosophila_melanogaster.BDGP6.28.dna.toplevel.fa.gz
wget ftp://ftp.ensembl.org/pub/release-100/gtf/drosophila_melanogaster/Drosophila_melanogaster.BDGP6.28.100.gtf.gz

# Decompress the fasta and gtf files.

gunzip Drosophila_melanogaster.BDGP6.28.dna.toplevel.fa.gz
gunzip Drosophila_melanogaster.BDGP6.28.100.gtf.gz

# Run STAR.
# Here, the output folder is specified as ‘dm6_star_index’ but it can be named to any unused filename.

STAR --runMode genomeGenerate --runThreadN 4 --outFileNamePrefix ./dm6_star_index/ --genomeDir ./dm6_star_index/ --genomeFastaFiles Drosophila_melanogaster.BDGP6.28.dna.toplevel.fa --sjdbGTFfile Drosophila_melanogaster.BDGP6.28.100.gtf --sjdbOverhang 100

