#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 02:00:00
#SBATCH -J test_trimmomatic_illumina
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load trimmomatic

trimmomatic PE -phred33 /home/vendz/genomeanalysis/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_1_clean.fq.gz /home/vendz/genomeanalysis/1_Zhang_2017/genomics_data/Illumina/E745-1.L500_SZAXPI015146-56_2_clean.fq.gz /home/vendz/genomeanalysis/Trimmomatic_Results/56_1_paired1.fq /home/vendz/genomeanalysis/Trimmomatic_Results/56_1_single1.fq /home/vendz/genomeanalysis/Trimmomatic_Results/56_2_paired1.fq /home/vendz/genomeanalysis/Trimmomatic_Results/56_2_single1.fq TRAILING:36 LEADING:36 
