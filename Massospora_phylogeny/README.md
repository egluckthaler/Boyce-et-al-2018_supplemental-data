Massospora phylogenomics ==== These data represent the Phylogenomics
pipeline used to infer tree for Massospora species from the metagenome
data.

A subset of Massospora contigs were annotated with Funannotate
(http://funannotate.readthedocs.io/en/latest/) based on matches to the
core set of 434 conserved Phylogenomic markers used
(https://github.com/1KFG/Phylogenomics_HMMs; JGI_1086).

The PHYling pipeline (https://github.com/stajichlab/PHYling_unified)
was used to build out homologs, align, concat and build phylogeny. A
checked out version of the code is provided in this repository for
archival purposes.

* search/JGI_1086 - hmmsearch results and top hit (*.best files) across
* aln/JGI_1086 - per-gene alignments
* phylo - phylogenetic analyses
* Ento.10_taxa.JGI_1086.fasaln - concatenated supermatrix of aligned sequences
* Ento.10_taxa.JGI_1086.partitions.txt - partition file for the concatenated protein alignments constructed into the superalignment
* pep - folder of some of the proteomes used in this study
