#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J test_blastn_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

# Load modules
module load bioinfo-tools
module load blast

blastn -outfmt 6 -subject /home/vendz/genomeanalysis/Reference/GCF_009734005.1_ASM973400v2_genomic.fna -query /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta -out /home/vendz/genomeanalysis/Blast_Results/blast_result.fna

