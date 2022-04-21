#!/bin/bash -l

#SBATCH -A uppmax2022-2-5
#SBATCH -M snowy
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 00:15:00
#SBATCH -J test_quast_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

# Load modules
module load bioinfo-tools
module load quast

# Run quast on PacBio genome assembly
quast.py -R /home/vendz/genomeanalysis/Reference/GCF_009734005.1_ASM973400v2_genomic.fna -o /home/vendz/genomeanalysis/Quast_Results_Reference/ /home/vendz/genomeanalysis/Canu_Results/efaecium.contigs.fasta
