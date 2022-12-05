#!/usr/bin/bash -l

#SBATCH -p batch --nodes=1 --ntasks=1 --cpus-per-task=12 --mem-per-cpu=24G --time=2-00:00:00 --job-name="MetagenomeEpiHealth1" --out logs/MAG.EH.1.%a.log

module load sratoolkit/3.0.0 
module load parallel-fastq-dump/0.6.7 

parallel-fastq-dump --sra-id SRR12131164 --threads 4 --outdir out/ --split-files --gzip
