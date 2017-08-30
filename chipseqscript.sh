
#STEP - 1 : Align reads using any  genomic aligners of your choice 
#command to align fastq files to reference sequences using bowtie2 aligner.
#command to align single sample
nohup bowtie2 -x /data3/chipseq/data/mm10index/mm10 -q /data3/chipseq/data/RNA_Dong_chip-sequence/Project_Dong_1618_140828B1_first_run/Sample_CD102/CD102_ACTTGA_L007_R1_001.fastq -S /data3/chipseq/data/alignmentfile/CD102_ACTTGA_L007_R1_001.sam &
#loop to run bowtie on multiple samples
for f in {01..11}
do 
 /usr/local/bin/bowtie2 -x  #path to bowtie indexes/humanindex/hg19 -q #path to inputfile/Sample_CD102/ CD102_ACTTGA_L004_R1_0$f.fastq -S  #path to outputfile/huvec/sample1/CD102_ACTTGA_L004_R1_0$f.sam
done
#convert sam to bam (bam files occupy less space)
samtools view -bS  #path to file > output file 
# merge all bamfile as per samples (sample wise)
samtools  merge   #path/*.bam
#STEP 2 : MACS pipeline (Peakcalling)
/usr/bin/macs14 -t #path to treated Bam file/sample4mergedfile.bam  -c  #path to control Bamfile/mergedfile/sample3mergedfile.bam  --format=BAM  --name=MIN6  --gsize  mm  --tsize=26 --diag MIN6   --wig MIN6.wig
#STEP - 3 : PeakAnalyzer (PeakAnnotator) - Peak annotation <windows version >
#utilities -NDG ; TSS