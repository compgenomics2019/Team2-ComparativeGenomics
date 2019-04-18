# Team2-ComparativeGenomics

## REQUIREMENTS
- install MentaLiST; please follow their installation instructions https://github.com/WGS-TB/MentaLiST
- install kSNP3.0_Linux_package

## MLST
### MLST Requirements
- Must have MentaLiST installed along with its dependencies (ie. Julia: https://julialang.org/downloads/)
- fastq raw data in the designated "$dataset" directory: dataset=/projects/team2/genome_assembly/dataset

MentaLiST will run in two steps:
1. build the kmer database 
  - This will pull fasta files used to build the database and store them in a MLST_FASTA_FILES directory. The database will be outputted    as MLST.db. Both are required for MLST calling.
2. MLST calling
  - The output from this step will be placed in the ./MLST_RESULTS directory. Several files will be created with the prefix "MLST_calls"; the file with the sequence types will be in the file called MLST_calls.txt

The output from the MLST analysis can be used to measure "closeness" of the isolates used and visulized in several ways, for instance minimum spanning trees.

## kSNP3
### kSNP3 Preparations
- File name:  a file ID and an extension. (e.g. Escherichia_coli_042.fasta)
- Input list file: one file per genome. The genome can be a finished (closed) sequence, multiple chromosomes and plasmids, an assembly of multiple contigs, or raw, unassembled reads.
- our input file list path: /projects/team2/comp_gen_temp/ksnp_run_folder/input_list.txt


## ANI
### requirements
- Python 3: could be installed easily without sudo access using anaconda 
- mummer: please follow the instructions of the mummer package to install mummer
