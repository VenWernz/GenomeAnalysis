#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:20:00
#SBATCH -J test_fastqc_trimmed_illumina
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load FastQC

fastqc /home/vendz/genomeanalysis/Trimmomatic_Results/56_1_paired1.fq /home/vendz/genomeanalysis/Trimmomatic_Results/56_2_paired1.fq -o /home/vendz/genomeanalysis/FastQC_Trimmed_Results
