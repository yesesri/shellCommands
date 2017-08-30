#!/bin/bash
file="SRA_id.txt"
while IFS= read -r line
do
 /home/ycheruku/gopi_sra_dump/sratoolkit.2.5.4-1-centos_linux64/bin/fastq-dump  -Z $line
done <"$file"