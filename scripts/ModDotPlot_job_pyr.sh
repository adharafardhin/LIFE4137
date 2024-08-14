#!/bin/bash
#SBATCH --job-name=ModDotPlot_Pyranica_1_default    # Job name for SLURM scheduler
#SBATCH --partition=defq                            # Partition (queue) name
#SBATCH --nodes=1                                   # Number of nodes
#SBATCH --ntasks-per-node=16                        # Number of tasks (threads) per node
#SBATCH --mem=64g                                   # Memory allocation
#SBATCH --time=12:00:00                             # Maximum runtime (hh:mm:ss)
#SBATCH --output=%x.out                             # Standard output log file (%x expands to job name)
#SBATCH --error=%x.err                              # Standard error log file (%x expands to job name)

# Print the start date and time
echo "STARTED `date`"

# Navigate to the desired directory
# Change directory to where ModDotPlot is located
cd /share/Yant_Group_Shared/Adhara/ModDotPlot

# Load the environment for running ModDotPlot
# Assumes you have a Python virtual environment in the 'venv' directory
source venv/bin/activate

# Add progress logging
echo "Running ModDotPlot script... `date`"

# Run your ModDotPlot command
# The 'static' command generates a dot plot from the input FASTA file
# The output will be stored in the specified directory
moddotplot static --fasta "input_file_dir" \
                  --output-dir "output_dir"

# Add progress logging
echo "ModDotPlot script finished. `date`"

# Print the end date and time
echo "FINISHED `date`"
