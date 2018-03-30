#!/bin/bash
#SBATCH --ntasks=
#SBATCH --cpus-per-task=
#SBATCH --nodes=
#SBATCH --mail-type=ALL
#SBATCH --mail-user=b.crosby@queensu.ca
#SBATCH -t 

###########################################
#					  #
# Script - Processing and filtering reads #
#					  #
###########################################


# Concatenate pairs of reads into singular files

cat plate1_forward_region7.fastq plate1_reverse_region7.fastq > plate1_region7.fastq
cat 


# Use 'process_radtags' to Remove adaptors 
