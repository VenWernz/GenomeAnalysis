#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:10:00
#SBATCH -J test_mummer_illumina
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load MUMmer/4.0.0rc1

mummer -mum -b -c /domus/h1/vendz/genomeanalysis/Reference/GCF_009734005.1_ASM973400v2_genomic.fna /home/vendz/genomeanalysis/Spades_Results/contigs.fasta > /domus/h1/vendz/genomeanalysis/Mummer_Illumina_Results/mummer_illumina_output.mums

mummerplot -png -p mummer_output -R /domus/h1/vendz/genomeanalysis/Reference/GCF_009734005.1_ASM973400v2_genomic.fna -Q /home/vendz/genomeanalysis/Spades_Results/contigs.fasta /domus/h1/vendz/genomeanalysis/Mummer_Illumina_Results/mummer_illumina_output.mums

