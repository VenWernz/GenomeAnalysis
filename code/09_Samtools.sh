#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J test_samtools_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load samtools

for x in /home/vendz/genomeanalysis/BWA_Results/*.sam
do
	base=$(basename $x .sam)
	samtools sort ${base}.sam -o /home/vendz/genomeanalysis/Sam_Results/${base}.bam
done
