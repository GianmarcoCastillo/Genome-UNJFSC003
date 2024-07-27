GNU nano 6.2                                                         bash *                                                                 
#!bin/bash

#create a direcory to store the summaries
mkdir busco_summaries

#define_the_lineage
lineage=enterobacterales_odb10

for sample in UNJFSC003 Crenshaw CCA6
do


busco -m genome -i genomes/"$sample".fasta -o "$sample"_busco -l "$lineage"
cp "$sample"_busco/my_summaries.*."$lineage"."$sample"*txt busco_summaries
done
