#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 15:00:00
#SBATCH -J test_canu_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load canu/2.0

canu genomeSize=3m batMemory=64G -p efaecium -pacbio /home/vendz/genomeanalysis/1_Zhang_2017/genomics_data/PacBio/*.fastq.gz \
-d /home/vendz/genomeanalysis/Canu_Results \
