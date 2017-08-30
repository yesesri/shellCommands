cat corrected_male_Pacbio.fastq | awk '{if(NR%4==2) print length($1)}' > input.readslength.txt
 sort corrected_male_Pacbio.fastq | uniq -c