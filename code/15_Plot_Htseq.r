#Loading the data
bh_data <- read.table("BH.txt")
se_data <- read.table("Serum.txt")

#Splitting the data into the different replicates and plotting this
geneID <- c(1:3126)
bh1 <- bh_data[c(1:3126),c(2)]
bh2 <- bh_data[c(1:3126),c(3)]
bh3 <- bh_data[c(1:3126),c(4)]
s1 <- se_data[c(1:3126),c(2)]
s2 <- se_data[c(1:3126),c(3)]
s3 <- se_data[c(1:3126),c(4)]
png("htseq_distribution.png")
plot(geneID, bh1, xlab="GeneID", ylab="Counts",
     main="Distribution of counts for BH (green) and Serum (pink)", col="green")
points(geneID, bh2, col="green")
points(geneID, bh3, col="green")
points(geneID, s1, col="pink")
points(geneID, s2, col="pink")
points(geneID, s3, col="pink")
dev.off()
