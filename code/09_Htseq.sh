#!/bin/bash --login

#SBATCH -A uppmax2022-2-5
#SBATCH -M SNOWY
#SBATCH -p core
#SBATCH -n 2
#SBATCH -t 01:00:00
#SBATCH -J test_htseq_pacbio
#SBATCH --mail-type=ALL
#SBATCH --mail-user vendela.werner.0619@student.uu.se

module load bioinfo-tools
module load htseq

htseq-count -f bam -r pos -i ID -t CDS \
/domus/h1/vendz/genomeanalysis/BWA_Results/*.bam \
/domus/h1/vendz/genomeanalysis/Prokka_Results/PROKKA_04052022.gff \
/domus/h1/vendz/genomeanalysis/Htseq_Results/htseq_count.txt
