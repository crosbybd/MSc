#!/bin/bash
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --mail-type=ALL
#SBATCH --mail-user=b.crosby@queensu.ca
#SBATCH -o /global/home/hpc3737/Scripts/resetraw.out
#SBATCH -e /global/home/hpc3737/Scripts/resetraw.err

# Because ~/Scripts/process_5.sh replaces the data file with the discards from
# each process_radtags run, need to replace raw data files before each run of
# process_radtags

date >> ~/Scripts/resetraw.out
date >> ~/Scripts/resetraw.err

touch ~/Scripts/resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.007.D701---D501.Tig1_R1.fastq.gz ~/rawdata_rad/lane1/plate1/lane1_R1_plate1.fastq.gz
cp ~/rawdata_rad/HI.3818.007.D701---D501.Tig1_R2.fastq.gz ~/rawdata_rad/lane1/plate1/lane1_R2_plate1.fastq.gz

echo "lane1_plate1 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.007.D701---D502.Tig2_R1.fastq.gz ~/rawdata_rad/lane1/plate2/lane1_R1_plate2.fastq.gz
cp ~/rawdata_rad/HI.3818.007.D701---D502.Tig2_R2.fastq.gz ~/rawdata_rad/lane1/plate2/lane1_R2_plate2.fastq.gz

echo "lane1_plate2 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.007.D702---D501.Tig3_R1.fastq.gz ~/rawdata_rad/lane1/plate3/lane1_R1_plate3.fastq.gz
cp ~/rawdata_rad/HI.3818.007.D702---D501.Tig3_R2.fastq.gz ~/rawdata_rad/lane1/plate3/lane1_R2_plate3.fastq.gz

echo "lane1_plate3 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.007.D702---D502.Tig4_R1.fastq.gz ~/rawdata_rad/lane1/plate4/lane1_R1_plate4.fastq.gz
cp ~/rawdata_rad/HI.3818.007.D702---D502.Tig4_R2.fastq.gz ~/rawdata_rad/lane1/plate4/lane1_R2_plate4.fastq.gz

echo "lane1_plate4 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.008.D701---D501.Tig1_R1.fastq.gz ~/rawdata_rad/lane2/plate1/lane2_R1_plate1.fastq.gz
cp ~/rawdata_rad/HI.3818.008.D701---D501.Tig1_R2.fastq.gz ~/rawdata_rad/lane2/plate1/lane2_R2_plate1.fastq.gz

echo "lane2_plate1 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.008.D701---D502.Tig2_R1.fastq.gz ~/rawdata_rad/lane2/plate2/lane2_R1_plate2.fastq.gz
cp ~/rawdata_rad/HI.3818.008.D701---D502.Tig2_R2.fastq.gz ~/rawdata_rad/lane2/plate2/lane2_R2_plate2.fastq.gz

echo "lane2_plate2 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.008.D702---D501.Tig3_R1.fastq.gz ~/rawdata_rad/lane2/plate3/lane2_R1_plate3.fastq.gz
cp ~/rawdata_rad/HI.3818.008.D702---D501.Tig3_R2.fastq.gz ~/rawdata_rad/lane2/plate3/lane2_R2_plate3.fastq.gz

echo "lane2_plate3 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/HI.3818.008.D702---D502.Tig4_R1.fastq.gz ~/rawdata_rad/lane2/plate4/lane2_R1_plate4.fastq.gz
cp ~/rawdata_rad/HI.3818.008.D702---D502.Tig4_R2.fastq.gz ~/rawdata_rad/lane2/plate4/lane2_R2_plate4.fastq.gz

echo "lane2_plate4 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/MurreHunt2018_5_6_D701_R1.fastq.gz ~/rawdata_rad/D701/2018_R1_D701.fastq.gz
cp ~/rawdata_rad/MurreHunt2018_5_6_D701_R2.fastq.gz ~/rawdata_rad/D701/2018_R2_D701.fastq.gz

echo "D701 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/MurreHunt2018_5_6_D702_R1.fastq.gz ~/rawdata_rad/D702/2018_R1_D702.fastq.gz
cp ~/rawdata_rad/MurreHunt2018_5_6_D702_R2.fastq.gz ~/rawdata_rad/D702/2018_R2_D702.fastq.gz

echo "D702 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/MurreHunt2018_5_6_D703_R1.fastq.gz ~/rawdata_rad/D703/2018_R1_D703.fastq.gz
cp ~/rawdata_rad/MurreHunt2018_5_6_D703_R2.fastq.gz ~/rawdata_rad/D703/2018_R2_D703.fastq.gz

echo "D703 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

cp ~/rawdata_rad/MurreHunt2018_5_6_D704_R1.fastq.gz ~/rawdata_rad/D704/2018_R1_D704.fastq.gz
cp ~/rawdata_rad/MurreHunt2018_5_6_D704_R2.fastq.gz ~/rawdata_rad/D704/2018_R2_D704.fastq.gz

echo "D704 done" >> resetraw_progress.txt
echo " " >> resetraw_progress.txt

