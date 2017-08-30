for f in {50..63}  #normal
do
/N/dc2/projects/MAMMALEXP/sridnona/script/ERP001058/cancer_data/sratoolkit.2.5.4-1-centos_linux64/bin/fastq-dump   -fastq-dump -Z ERR1644$f > outputdirectory/ERR1644$f.fastq
done   
###
for f in {73..82}  #tumor
do
/N/dc2/projects/MAMMALEXP/sridnona/script/ERP001058/cancer_data/sratoolkit.2.5.4-1-centos_linux64/bin/fastq-dump   -fastq-dump -Z ERR1644$f > outputdirectory/ERR1644$f.fastq
done   
