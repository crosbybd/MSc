#!/bin/bash
#SBATCH --cpus-per-task=8
#SBATCH --mem=16G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=b.crosby@queensu.ca
#SBATCH -t 7-00:00:00
#SBATCH -o /global/home/hpc3737/Scripts/process_radtags.out
#SBATCH -e /global/home/hpc3737/Scripts/process_radtags.err

###########################################
#                                         #
# Script - Processing and filtering reads #
#                                         #
###########################################

date >> ~/Scripts/process_radtags.out
date >> ~/Scripts/process_radtags.err

module load stacks

# Anna's data
for LANE in lane1 lane2
do
	for PLATE in plate1 plate2 plate3 plate4
	do
		for BLENGTH in 8 7 6 5 4
		do
			process_radtags -i gzfastq -P -p ~/rawdata_rad/${LANE}/${PLATE}/ \
				-o ~/post_procrad/${LANE}/${PLATE}/ -r -c -q -E phred33 \
				-b ~/mybarcodes/barcode_${PLATE}_${BLENGTH}bp.txt \
				--barcode_dist_1 1 --inline_null -t 117 -D \
				--renz_1 sbfI --renz_2 mspI
			
			mv ~/post_procrad/${LANE}/${PLATE}/${LANE}_R1_${PLATE}.fastq.gz.discards \
				~/rawdata_rad/${LANE}/${PLATE}/${LANE}_R1_${PLATE}.fastq.gz
			mv ~/post_procrad/${LANE}/${PLATE}/${LANE}_R2_${PLATE}.fastq.gz.discards \
				~/rawdata_rad/${LANE}/${PLATE}/${LANE}_R2_${PLATE}.fastq.gz
		echo "the run for ${LANE}, ${PLATE}, ${BLENGTH} is done" >> ~/Scripts/process_radtags_log.out
		echo " "
		done
	done
done


# My data
for INDEX in D701 D703
do
        for BLENGTH in 6 5 4
        do
                process_radtags -i gzfastq -P -p ~/rawdata_rad/${INDEX}/ \
                -o ~/post_procrad/${INDEX}/ -r -c -q -E phred33 \
                -b ~/mybarcodes/barcode_${INDEX}_${BLENGTH}bp.txt \
                --barcode_dist_1 1 --inline_null -t 117 -D \
                --renz_1 sbfI --renz_2 mspI

		mv ~/post_procrad/${INDEX}/2018_R1_${INDEX}.fastq.gz.discards \
			~/rawdata_rad/${INDEX}/2018_R1_${INDEX}.fastq.gz
		mv ~/post_procrad/${INDEX}/2018_R2_${INDEX}.fastq.gz.discards \
			~/rawdata_rad/${INDEX}/2018_R2_${INDEX}.fastq.gz
		mv ~/post_procrad/${INDEX}/process_radtags.${INDEX}.log \
			~/post_procrad/process_radtags.${INDEX}.${BLENGTH}.log
                echo "the run for ${INDEX}, ${BLENGTH} is done" >> ~/Scripts/process_radtags_log.out
                echo " "
        done
done

for INDEX in D702 D704
do
	for BLENGTH in 8 7 6
	do
		process_radtags -i gzfastq -P -p ~/rawdata_rad/${INDEX}/ \
		-o ~/post_procrad/${INDEX}/ -r -c -q -E phred33 \
		-b ~/mybarcodes/barcode_${INDEX}_${BLENGTH}bp.txt \
		--barcode_dist_1 1 --inline_null -t 117 -D \
		--renz_1 sbfI --renz_2 mspI

		mv ~/post_procrad/${INDEX}/2018_R1_${INDEX}.fastq.gz.discards \
			~/rawdata_rad/${INDEX}/2018_R1_${INDEX}.fastq.gz
		mv ~/post_procrad/${INDEX}/2018_R2_${INDEX}.fastq.gz.discards \
			~/rawdata_rad/${INDEX}/2018_R2_${INDEX}.fastq.gz
		mv ~/post_procrad/${INDEX}/process_radtags.${INDEX}.log \
			~/post_procrad/process_radtags.${INDEX}.${BLENGTH}.log
                echo "the run for ${INDEX}, ${BLENGTH} is done" >> ~/Scripts/process_radtags_log.out
                echo " "
	done
done
