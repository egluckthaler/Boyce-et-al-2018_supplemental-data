#!/bin/bash
#SBATCH --ntasks 24 --nodes 1 --time 72:00:00 --out iqtree.%A.log --mem 96G
#SBATCH -J ZoopagIQ

module load IQ-TREE

ALN=Ento.10_taxa.JGI_1086.fasaln
OUT=Coere1
BASE=$(basename $ALN .fasaln)
PARTITIONS=$BASE.partitions.txt
iqtree -s $ALN -bb 1000 -st AA -seed 2231 -t BIONJ -pre $BASE.RUN -o $OUT -nt AUTO -spp $PARTITIONS -bspec GENESITE
