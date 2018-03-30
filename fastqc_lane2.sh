#!/bin/bash
#SBATCH -c 2
#SBATCH 
#SBATCH -t 1-0:00:00
#SBATCH -o fastqc.out

module load fastqc
