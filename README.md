# Code for Perez Mojica et al., 2023, STAR Protocols

## Prerequisites
* Assumes a Linux or Mac environment and that you are working the terminal.
* For other software requirements, see publication.

## Steps to reproduce results in paper
0. Clone this repo and `cd` into the cloned folder.
1. `bash 01_dl_and_index_dm6.sh`
2. `bash 02_dl_fqs_and_celseq_BCs.sh`
3.
    i. `bash 03_run_star.sh sample1 SRR21697060_1.fastq.gz SRR21697060_2.fastq.gz 16`
    
    ii. `bash 03_run_star.sh sample2 SRR21697059_1.fastq.gz SRR21697059_2.fastq.gz 16`

4. `Rscript --vanilla 04_make_counts_table.R`
5. `Rscript --vanilla -e 'rmarkdown::render("05_example_ep.Rmd")'`
