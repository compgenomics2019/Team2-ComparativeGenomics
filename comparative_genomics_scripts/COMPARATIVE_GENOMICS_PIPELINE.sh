#!/bin/bash

# Run MLST:

# MLST Requirements:
# Must have FASTA files for building the database in a directory called MLST_FASTA_FILES in the working directory

echo "######################## MLST ###########################"

./mlst_analysis.sh


echo "######################## kSNP3 ########################"

export PATH=/projects/team3/comparatve_genomics/JZ/kSNP/kSNP3.1_Linux_package/kSNP3:$PATH

MakeFasta /projects/team2/comp_gen_temp/ksnp_run_folder/input_list.txt /projects/team2/comp_gen_temp/ksnp_run_folder/fastainput
Kchooser /projects/team2/comp_gen_temp/ksnp_run_folder/fastainput
kSNP3 -in /projects/team2/comp_gen_temp/ksnp_run_folder/input_list.txt -outdir KSNP_FINAL_RESULT -k 19 -vcf -ML | tee /projects/team2/comp_gen_temp/ksnp_run_folder/log.txt


echo "######################## ANI ########################"

export PATH=/projects/home/lrishishwar3/setups/mummer/:$PATH
./get_distance_matrix.py -d /projects/team2/genome_assembly/dataset/Assembled_Contigs/ -o -t 4
