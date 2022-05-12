#!/usr/bin/env Rscript
library(DESeq2)

datadir <- "/home/vendz/genomeanalysis/Htseq_Results/"
sample <- c('htseq_count_aln-pe_BH_72', 'htseq_count_aln-pe_BH_73', 'htseq_count_aln-pe_BH_74', 'htseq_count_aln-pe_Serum_69', 'htseq_count_aln-pe_Serum_70', 'htseq_count_aln-pe_Serum_71')
fileName <- c('htseq_count_aln-pe_BH_72.txt', 'htseq_count_aln-pe_BH_73.txt', 'htseq_count_aln-pe_BH_74.txt', 'htseq_count_aln-pe_Serum_69.txt', 'htseq_count_aln-pe_Serum_70.txt', 'htseq_count_aln-pe_Serum_71.txt')
type <- c('BH', 'BH', 'BH', 'Se', 'Se', 'Se')
phdata <- data.frame(sample, fileName, type)

dds <- DESeqDataSetFromHTSeqCount(sampleTable=phdata,directory=datadir,design=~ type)

ddsDE <- DESeq(dds)
myres <- results(ddsDE)
write.csv(as.data.frame(myres), file="/home/vendz/genomeanalysis/Deseq_Results/Deseq_table.csv")

png(file="/home/vendz/genomeanalysis/Deseq_Results/Deseq_plot.png")
plot(myres$log2FoldChange,-log10(myres$pvalue),pch=19,cex=0.3,xlab="Log2 FC",ylab="-log10(P-value)",col=ifelse(myres$pvalue<0.05&abs(myres$log2FoldChange)>1,"red","black"))
dev.off()

res_p0.05_FC1<-subset(myres,pvalue<0.05&abs(log2FoldChange)>1)
res_p0.05_FC1_ordered <- res_p0.05_FC1[order(res_p0.05_FC1$log2FoldChange),]
write.csv(as.data.frame(res_p0.05_FC1_ordered), file="/home/vendz/genomeanalysis/Deseq_Results/res_p0.05_FC1_ordered.csv") 
