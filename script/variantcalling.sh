#!/bin/bash
# Please run the script with:
# variantcalling.sh ReferenceGenome InputDirectory
# for example
# ./variantcalling.sh /mnt/data/refgenome /mnt/data/pipeline/monkey1
RefGenome=$1
DataDir=$2
name="$( basename ${DataDir} )"
freebayes --fasta-reference ${RefGenome} ${DataDir/*.sam.sorted.bam --standard-filters --no-population-priors -p 2 --report-genotype-likelihood-max --prob-contamination 0.05 > ${name}.vcf
