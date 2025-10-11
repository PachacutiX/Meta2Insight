#!/usr/bin/bash -l
#SBATCH --job-name=picrust2_stratified_lasse
#SBATCH --output=job_%j_%x.out
#SBATCH --error=job_%j_%x.err
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=20
#SBATCH --mem=120G
#SBATCH --time=2-00:00:00
#SBATCH --mail-type=ALL
#SBATCH --mail-user=yr42on@student.aau.dk


# load software modules or environments
conda activate /home/student.aau.dk/yr42on/.conda/envs/picrust25

which picrust2_pipeline.py
picrust2_pipeline.py --version



picrust2_pipeline.py \
 -s /space/databases/midas/MiDAS5.3_20240320/FLASVs.fa \
 -i /home/bio.aau.dk/chj/master_student/2025_Lasse/picrust2/test/Køng_otutable_forb_diversity.biom \
 -o picrust2_out_pipeline_stratified_lasse \
 -p 20 \
 --per_sequence_contrib \
 --stratified
 
