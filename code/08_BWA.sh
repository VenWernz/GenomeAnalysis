#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 06:00:00
#SBATCH -J test_bwa_samtools_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load bwa
module load samtools

bwa index /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta

bwa mem /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_1.fastq.gz /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797972_pass_2.fastq.gz | samtools sort -o /home/vendz/genomeanalysis/BWA_Results/aln-pe_BH_72.bam

bwa mem /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_1.fastq.gz /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797973_pass_2.fastq.gz | samtools sort -o /home/vendz/genomeanalysis/BWA_Results/aln-pe_BH_73.bam

bwa mem /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_1.fastq.gz /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_BH/trim_paired_ERR1797974_pass_2.fastq.gz | samtools sort -o /home/vendz/genomeanalysis/BWA_Results/aln-pe_BH_74.bam

bwa mem /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_1.fastq.gz /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797969_pass_2.fastq.gz | samtools sort -o /home/vendz/genomeanalysis/BWA_Results/aln-pe_Serum_69.bam

bwa mem /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_1.fastq.gz /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797970_pass_2.fastq.gz | samtools sort -o /home/vendz/genomeanalysis/BWA_Results/aln-pe_Serum_70.bam

bwa mem /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_1.fastq.gz /home/vendz/genomeanalysis/1_Zhang_2017/transcriptomics_data/RNA-Seq_Serum/trim_paired_ERR1797971_pass_2.fastq.gz | samtools sort -o /home/vendz/genomeanalysis/BWA_Results/aln-pe_Serum_71.bam

