# Define the path to the collinearity file
collinearity_file_path = 'same.collinearity'

# Initialize a dictionary to store the alignment scores and e-values
alignment_scores = {}

# Open and read the collinearity file line by line
with open(collinearity_file_path, 'r') as file:
    for line in file:
        # Check if the line starts with '## Alignment', indicating the start of an alignment block
        if line.startswith('## Alignment'):
            # Split the line into parts to extract the alignment number, score, and e-value
            parts = line.split()
            alignment_number = int(parts[2][:-1])  # Extract the alignment number and convert it to an integer
            score = float(parts[3].split('=')[1])  # Extract the alignment score and convert it to a float
            e_value = float(parts[4].split('=')[1])  # Extract the e-value and convert it to a float

            # Debug print to verify parsing (can be removed or commented out in production)
            print(f'Parsed Alignment {alignment_number}: score={score}, e_value={e_value}')

            # Store the score and e-value in the dictionary with the alignment number as the key
            alignment_scores[alignment_number] = {'score': score, 'e_value': e_value}

# Sort the alignments by score in descending order
# The sorted list contains tuples with the alignment number and its corresponding score and e-value
sorted_alignments = sorted(alignment_scores.items(), key=lambda x: x[1]['score'], reverse=True)

# Select the top 10 alignments based on score
top_alignments = sorted_alignments[:10]

# Display the top 10 alignments
print(top_alignments)
