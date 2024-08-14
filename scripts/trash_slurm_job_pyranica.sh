#!/bin/bash
#SBATCH --job-name=TRASH_run_Pyrenaica          # Job name for SLURM scheduler
#SBATCH --partition=defq                               # Partition (queue) name
#SBATCH --nodes=1                                      # Number of nodes
#SBATCH --ntasks-per-node=16                           # Number of tasks (threads) per node
#SBATCH --mem=64g                                      # Memory allocation
#SBATCH --time=48:00:00                                # Maximum runtime (hh:mm:ss)
#SBATCH --output=%x.out                                # Standard output log file (%x expands to job name)
#SBATCH --error=%x.err                                 # Standard error log file (%x expands to job name)

# Load user's bash profile
# This loads the user's environment settings, including paths and environment variables
source $HOME/.bash_profile

# Print the start date and time
echo "STARTED `date`"

# Navigate to the desired directory
cd /share/Yant_Group_Shared/Adhara/TRASH

# Activate the desired conda environment
conda activate trash_env

# Add progress logging
echo "Running TRASH script... `date`"

# Run your command
# Replace 'input_fasta_file_dir' with the path to your input FASTA files
# Replace 'output_dir' with the desired output directory
./TRASH_run.sh input_fasta_file_dir --o output_dir

# Add progress logging to indicate completion of the TRASH script
echo "TRASH script finished. `date`"

# Print the end date and time
echo "FINISHED `date`"
