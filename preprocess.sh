bowtie2-build data/genome.scf.fasta pfx
bowtie2 -q --no-mixed -x pfx -1 data/frag_1.fastq -2 data/frag_2.fastq -S pfxOut.sam
./bowtie2convert pfxOut.sam data/genome.scf.fasta 1000
./align data/genome.scf.fasta 300 4

