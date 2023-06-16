# Code for Perez Mojica et al., 2023, STAR Protocols

## Prerequisites
* Assumes a Linux or Mac environment.
* For other software requirements, see publication.

## Steps to reproduce results in paper
1. `bash 01_dl_and_index_dm6.sh`
2. `bash 02_dl_fqs_and_celseq_BCs.sh`
3. `bash 03_run_star.sh`
4. `Rscript --vanilla 04_make_counts_table.R`

