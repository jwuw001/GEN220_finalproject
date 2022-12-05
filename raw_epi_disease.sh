#!/usr/bin/bash -l

#SBATCH -p batch --nodes=1 --ntasks=1 --cpus-per-task=12 --mem-per-cpu=36G --time=2-00:00:00 --job-name="Disease_Epi" --out logs/MAG.test2.1.%a.log

module load sratoolkit/3.0.0 
module load parallel-fastq-dump/0.6.7 

parallel-fastq-dump --sra-id SRR12131175 --threads 4 --outdir out/ --split-files --gzip


#this is what I tried running second
