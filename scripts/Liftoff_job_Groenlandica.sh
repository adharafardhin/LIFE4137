#!/bin/bash
#SBATCH --job-name=Liftoff_Groenlandica_1_default   # Job name for SLURM scheduler
#SBATCH --partition=defq                            # Partition (queue) name
#SBATCH --nodes=1                                   # Number of nodes
#SBATCH --ntasks-per-node=16                        # Number of tasks (threads) per node
#SBATCH --mem=128g                                  # Memory allocation
#SBATCH --time=72:00:00                             # Maximum runtime (hh:mm:ss)
#SBATCH --output=%x.out                             # Standard output log file (%x expands to job name)
#SBATCH --error=%x.err                              # Standard error log file (%x expands to job name)

# Print the start date and time
echo "STARTED `date`"

# Load user's bash profile
# This ensures that environment settings like PATH and conda initialization are loaded
source $HOME/.bash_profile

# Navigate to the desired directory
# Change directory to where Liftoff and your input data are located
cd /share/Yant_Group_Shared/Adhara/Liftoff

# Load the environment for running Liftoff
# Assumes you have a conda environment named 'liftoff_env_3' with Liftoff installed
conda activate liftoff_env_3

# Add progress logging
echo "Running Liftoff script... `date`"

# Run your Liftoff command
# -g specifies the reference annotation file in GFF3 format
# -o specifies the output file for the Liftoff results
# -u specifies the file to store unmapped features
# -dir specifies the directory for intermediate files
# The command transfers annotations from C_excelsa_V5.fa to C_Groenlandica.fasta
liftoff -g /share/Yant_Group_Shared/Adhara/Liftoff/C_excelsa_V5_braker2_wRseq.gff3 \
        -o /share/Yant_Group_Shared/Adhara/Liftoff/output_liftoff_Groenlandica/output_liftoff_Gro.gff3 \
        -u unmapped_features_Gry.txt \
        -dir intermediate_files_Gry \
        /share/Yant_Group_Shared/Adhara/Liftoff/C_Groenlandica.fasta \
        /share/Yant_Group_Shared/Adhara/Liftoff/C_excelsa_V5.fa

# Add progress logging
echo "Liftoff script finished. `date`"

# Print the end date and time
echo "FINISHED `date`"
