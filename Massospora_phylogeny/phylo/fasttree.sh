#!/bin/bash
#SBATCH --nodes 1 --ntasks 16 --mem 24G --time 24:00:00 -p intel --out fasttree.log

module load fasttree
ALN=Ento.10_taxa.JGI_1086.fasaln
OUT=Coere1
BASE=$(basename $ALN .fasaln)
PARTITIONS=$BASE.partitions.txt
OUT=$BASE.fasttree.tre
LONG=$(basename $OUT .tre)"_longname.tre"
FastTreeMP -wag -gamma < $ALN > $OUT

perl ../PHYling_unified/util/rename_tree_nodes.pl $OUT ../prefix.tab > $LONG
