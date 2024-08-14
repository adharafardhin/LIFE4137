# Define the alignment numbers of interest
# These are the specific alignment blocks we want to extract from the collinearity file
collinearity_file_path = 'same.collinearity'

# List of alignment numbers that we are interested in extracting
top_alignment_numbers = [108, 533, 841, 723, 739, 132, 109, 928, 21, 740]

# Initialize a list to store the extracted blocks
# This will hold all the lines corresponding to the alignment blocks of interest
extracted_blocks = []

# Read the collinearity file and extract relevant blocks
# Open the collinearity file in read mode
with open(collinearity_file_path, 'r') as file:
    is_within_block = False  # Flag to track if we are currently within a block of interest
    current_alignment_number = None  # Variable to hold the current alignment number
    for line in file:
        if line.startswith('## Alignment'):  # Check if the line starts a new alignment block
            parts = line.split()  # Split the line into parts to extract the alignment number
            alignment_number = int(parts[2][:-1])  # Extract and convert the alignment number to an integer
            if alignment_number in top_alignment_numbers:  # Check if the alignment number is one of interest
                is_within_block = True  # Set the flag to True since we are within a block of interest
                current_alignment_number = alignment_number  # Store the current alignment number
                extracted_blocks.append(line.strip())  # Add the alignment header to the list of extracted blocks
            else:
                is_within_block = False  # Set the flag to False if the block is not of interest
        elif is_within_block:  # If we are within a block of interest, continue to extract lines
            extracted_blocks.append(line.strip())  # Add the line to the list of extracted blocks

# Print the extracted blocks
# Loop through the list of extracted blocks and print each line
for block in extracted_blocks:
    print(block)
