#!/bin/bash
#SBATCH -c 2
#SBATCH --mem 20g
#SBATCH -t 1:00:00

echo our script worked!

hostname

sleep 120

Rscript ~/hpc3737/biol812/printout.R
