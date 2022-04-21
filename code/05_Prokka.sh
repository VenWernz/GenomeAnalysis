#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J test_prokka_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load prokka

prokka -o /home/vendz/genomeanalysis/Prokka_Results/ /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta
