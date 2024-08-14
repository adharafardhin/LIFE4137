#!/bin/bash
#SBATCH --job-name=mummer_Excelsa                  # Job name for SLURM scheduler
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
# Change directory to where MUMmer is installed and the script is executed
cd /share/Yant_Group_Shared/Adhara/mummer/mummer-4.0.0beta2

# Load the environment for running MUMmer
# Assumes you have a conda environment named 'mummer4-env' with MUMmer installed
conda activate mummer4-env

# Add progress logging
echo "Running MUMmer script... `date`"

# Run your MUMmer command using nucmer
# -p mummer_excelsa: Prefix for output files
# This command aligns the protein sequences in C_excelsa_V5_braker2_wRseq.aa.LTPG.fasta against the reference genome C_excelsa_V5.fa
./nucmer -p mummer_excelsa /share/Yant_Group_Shared/Adhara/mummer/C_excelsa_V5_braker2_wRseq.aa.LTPG.fasta /share/Yant_Group_Shared/Adhara/Liftoff/C_excelsa_V5.fa

# Add progress logging
echo "MUMmer script finished. `date`"

# Print the end date and time with a success message
echo "FINISHED `date`"
