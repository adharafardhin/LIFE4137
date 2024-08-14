#!/bin/bash
#SBATCH --job-name=ModDotPlot_Excelsa_1_default   # Job name for SLURM scheduler
#SBATCH --partition=defq                                # Partition (queue) name
#SBATCH --nodes=1                                       # Number of nodes
#SBATCH --ntasks-per-node=16                            # Number of tasks (threads) per node
#SBATCH --mem=32g                                       # Memory allocation
#SBATCH --time=12:00:00                                 # Maximum runtime (hh:mm:ss)
#SBATCH --output=%x.out                                 # Standard output log file (%x expands to job name)
#SBATCH --error=%x.err                                  # Standard error log file (%x expands to job name)

# Print the start date and time
echo "STARTED `date`"

# Navigate to the desired directory
# Change directory to where your ModDotPlot tool and data are located
cd /share/Yant_Group_Shared/Adhara/ModDotPlot

# Load the virtual environment for running ModDotPlot
# This assumes that the virtual environment is set up in the "venv" directory
source venv/bin/activate

# Run your ModDotPlot command
# "static" is the ModDotPlot subcommand; replace "input_fasta_file_dir_for_excelsa" 
# with the actual path to your input FASTA file directory
# The output will be directed to the specified output directory
moddotplot static --fasta "input_fasta_file_dir_for_excelsa" --output-dir "output_dir"

# Log progress indicating that the ModDotPlot script has finished running
echo "ModDotPlot script finished. `date`"

# Print the end date and time
echo "FINISHED `date`"
