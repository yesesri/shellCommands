#!/bin/bash
for f in {81..87}
do
for k in {1..2}
do
wget ftp://ftp.sra.ebi.ac.uk/vol1/fastq/ERR657/ERR6577$f/ERR6577$f_$i.fastq.gz
done
done