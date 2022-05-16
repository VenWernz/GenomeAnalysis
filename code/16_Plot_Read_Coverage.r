#!/usr/bin/env Rscript

bh_depth <- read.table("BH_72.tsv")
se_depth <- read.table("Serum_69.tsv")

png("BH_read_coverage.png")
plot(bh_depth[c(1:100000),c(2)], bh_depth[c(1:100000),c(3)], xlab="Position", ylab="Coverage",
     main="Distribution of read coverage for BH_72 replicate, first 100 000 positions")
dev.off()

png("Serum_read_coverage.png")
plot(se_depth[c(1:100000),c(2)], se_depth[c(1:100000),c(3)], xlab="Position", ylab="Coverage",
     main="Distribution of read coverage for Serum_69 replicate, first 100 000 positions")
dev.off()
