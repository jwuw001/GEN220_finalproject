#!/usr/bin/bash -l

#SBATCH -p batch --nodes=1 --ntasks=1 --cpus-per-task=12 --mem-per-cpu=12G --time=4:00:00 --job-name="MetagenomeTest1" --out logs/MAG.test.1.%a.log

module load sratoolkit/3.0.0 
module load parallel-fastq-dump/0.6.7 

parallel-fastq-dump --sra-id SRR12131175 --threads 4 --outdir out/ --split-files --gzip


#this is what I tried running first
