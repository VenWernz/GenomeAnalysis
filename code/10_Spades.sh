#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 24:00:00
#SBATCH -J test_spades_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load spades

spades.py -k 55 -1 /home/vendz/genomeanalysis/Trimmomatic_Results/56_1_paired1.fq -2 /home/vendz/genomeanalysis/Trimmomatic_Results/56_2_paired1.fq --nanopore /home/vendz/genomeanalysis/1_Zhang_2017/genomics_data/Nanopore/E745_all.fasta.gz -o /home/vendz/genomeanalysis/Spades_Results

