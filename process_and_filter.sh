#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --nodes=1
#SBATCH --mail-type=ALL
#SBATCH --mail-user=b.crosby@queensu.ca
#SBATCH -t 1-00:00:00

#########################################################
#                                                       #
#  Script for processing and filtering raw RADseq data  #
#                                                       #
#########################################################


# Unzip and rename fastq.gz files

gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig1_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate1_forward_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig1_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate1_forward_region8.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig1_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate1_reverse_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig1_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate1_reverse_region8.fastq

gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig2_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate2_forward_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig2_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate2_forward_region8.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig2_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate2_reverse_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig2_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate2_reverse_region8.fastq

gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig3_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate3_forward_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig3_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate3_forward_region8.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig3_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate3_reverse_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig3_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate3_reverse_region8.fastq

gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig4_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate4_forward_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig4_R1.fastq.gz > /global/home/hpc3737/rawdata_rad/plate4_forward_region8.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*007*Tig4_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate4_reverse_region7.fastq
gunzip /global/home/hpc3737/rawdata_rad/HI*008*Tig4_R2.fastq.gz > /global/home/hpc3737/rawdata_rad/plate4_reverse_region8.fastq



# Remove adaptors using STACKS


