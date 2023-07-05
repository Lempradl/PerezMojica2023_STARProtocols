library(readr)
library(dplyr)
library(tibble)
library(DropletUtils)
library(scuttle)

decoder_file <- "celseq_barcodes.192.txt"
samples <- c("sample1", "sample2")


dec <- read_tsv(decoder_file, col_names = c("bc_num","bc"))

starsolo_to_table <- function(starsolo_dir, decoder){

    sce <- read10xCounts(starsolo_dir, col.names=TRUE)
    rownames(sce) <- uniquifyFeatureNames(rownames(sce), rowData(sce)$Symbol)
    counts <- as.matrix(counts(sce))

    # rename columns with bc_num
    colnames(counts) <- decoder$bc_num[match(colnames(counts), decoder$bc)]

    tibble::as_tibble(counts, rownames="Gene") %>%
        dplyr::select(Gene, as.character(sort(as.integer(colnames(counts)))))
}

for (i in 1:length(samples)){
    dir <- paste0("STARsolo_out/", samples[i], ".Solo.out/Gene/raw/")
    out_file <- paste0(samples[i], "_counts.tsv")

    df <- starsolo_to_table(dir, dec)
    write_tsv(df, out_file)
}
