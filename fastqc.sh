#!/bin/bash
#SBATCH -c 2
#SBATCH -t 1-0:00:00
#SBATCH -o fastqc.out
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=4
#SBATCH --mem=1G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=b.crosby@queensu.ca

module load fastqc

fastqc HI*.gz

