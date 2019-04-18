#!/bin/bash

# Script to run MentaLiST

mentalist=/projects/team2/comp_gen_temp/MentaLiST/src/mentalist
dataset=/projects/team2/genome_assembly/dataset

# Need to build database/schema ; fasta files used for schema must be in the MLST_FASTA_FILES directory for calling

$mentalist download_pubmlst -k 25 --db ./MLST.db -o ./MLST_FASTA_FILES/ -s 102

# Call MLST

$mentalist call -o ./MLST_calls --db ./MLST.db -1 $dataset/CGT*_1.fq -2 $dataset/CGT*_2.fq

mkdir MLST_RESULTS

mv MLST_calls* ./MLST_RESULTS


