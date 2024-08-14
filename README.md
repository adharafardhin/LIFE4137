# **LIFE4137 Bioinformatics Individual Research Project**

## **Project Title and Description**
**Comparative Genomic Analysis of Centromeric Regions in Cochlearia Species: Insights into Evolutionary Conservation and Structural Variation**  
ToDo: Add short description here

## **Overview of the Project**
### **Aims**
The aim of this project is to investigate the evolutionary conservation and structural diversity of centromeric regions across Cochlearia excelsa, Cochlearia groenlandica, and Cochlearia pyrenaica through comparative genomics. 
### **Outcome**
- ToDo: Add outcomes here

### **Results**
- ToDo: Add results here

## **Repository Overview**

| Directories                     | Description                                                                      |
|-----------------------------|----------------------------------------------------------------------------------|
| **installation_guidelines**  | Instructions and guidelines for the installing the tools.                                     |
| **datasets**                | Details about the datasets used. |
| **scripts**                   | Scripts used in this project           |

### List of scripts

| Script Names                           | Descriptions                                                                                       |
|----------------------------------------|----------------------------------------------------------------------------------------------------|
| Liftoff_job_Groenlandica.sh             | Script to run Liftoff for transferring gene annotations from Cochlearia excelsa to C. groenlandica. |
| Liftoff_job_Pyranica.sh                 | Script to run Liftoff for transferring gene annotations from Cochlearia excelsa to C. pyrenaica.    |
| ModDotPlot_job_excelsa.sh               | Script to run ModDotPlot for visualizing centromeric regions in Cochlearia excelsa genome.          |
| ModDotPlot_job_gro.sh                   | Script to run ModDotPlot for visualizing centromeric regions in Cochlearia groenlandica genome.     |
| ModDotPlot_job_pyr.sh                   | Script to run ModDotPlot for visualizing centromeric regions in Cochlearia pyrenaica genome.        |
| find_top_scores.py                      | Python script to identify the top synteny blocks based on scoring criteria.                         |
| find_top_synteny_blocks.py              | Python script to extract and analyze top synteny blocks for further visualization.                  |
| mummer_job_Excelsa.sh                   | Script to run MUMmer4 for genome alignment of C. excelsa against other genomes.                     |
| mummer_job_Groenlandica.sh              | Script to run MUMmer4 for genome alignment of C. groenlandica against other genomes.                |
| mummer_job_Pyranica.sh                  | Script to run MUMmer4 for genome alignment of C. pyrenaica against other genomes.                   |
| trash_slurm_job_Excelsa.sh      | Script to run TRASH for identifying and annotating repeats in Cochlearia excelsa genome.            |
| trash_slurm_job_Groenlandica.sh| Script to run TRASH for identifying and annotating repeats in Cochlearia groenlandica genome.       |
| trash_slurm_job_pyranica.sh             | Script to run TRASH for identifying and annotating repeats in Cochlearia pyrenaica genome.          |

## **Prerequisites**
- ToDo: Add here

## Tools

### TRASH: Tandem Repeat Annotation and Structural Hierarchy 
TRASH (Tandem Repeat Annotation and Structural Hierarchy) is a bioinformatics tool designed for the identification, extraction, and analysis of tandem repeats within genomic sequences. This tool is particularly effective in detecting and characterizing higher-order repeat structures, which are critical for understanding genomic organization and function.

#### Key Features:
- Local K-mer Counting: TRASH uses a local k-mer counting approach to identify regions of the genome that are rich in repeated sequences. This method allows for the precise detection of tandem repeats.
- Periodicity and Consensus Sequence Identification: The tool calculates the periodicity of detected tandem repeats and constructs a consensus sequence, providing a comprehensive map of repeat units.
- Higher Order Repeat (HOR) Detection: TRASH can identify higher-order repeats by analyzing pairs of repeat blocks with high similarity, which is crucial for studying complex genomic structures such as satellite DNA.
- Multithreading Support: The tool supports multithreading, enabling the efficient processing of large genomic datasets by utilizing multiple cores.
Customizable Parameters: TRASH offers a wide range of customizable parameters, allowing users to fine-tune the analysis to meet specific research needs.

#### Why TRASH?

This tool was essential for this project as it enabled the precise identification and annotation of repetitive DNA elements within the Cochlearia species genomes. These repetitive elements, particularly tandem repeats, are crucial in identifying centromeric regions, which are typically rich in such sequences. By using TRASH, I was able to pinpoint these regions with greater accuracy, facilitating the subsequent analysis of their structural variation and evolutionary conservation. This tool's ability to handle complex, repetitive sequences without prior knowledge of specific repeat families was particularly valuable in this comparative genomic study, where centromeric regions were expected to be highly variable yet evolutionarily significant.

## ModDotPlot: Rapid and Interactive Visualization of Complex Repeats
ModDotPlot is a powerful visualization tool designed for creating dot plots that showcase complex repeat structures in large genomic sequences. It generates identity heatmaps by rapidly approximating the Average Nucleotide Identity (ANI) between pairwise combinations of genomic intervals. This tool is particularly useful for researchers who need to visualize and compare large sequences or whole genomes efficiently.

#### Key Features:
- Interactive and Static Modes: ModDotPlot offers both an interactive mode, where users can explore genomic data in real-time using a web interface, and a static mode, which quickly generates publication-ready plots.
- Flexible Input Options: The tool supports various input configurations, including single or multi-FASTA files, and can handle up to two sequences in interactive mode. It also allows for the comparison of different sequences.
- Customizable Visualization: Users can adjust parameters such as k-mer size, resolution, and color palettes to tailor the dot plots to their specific research needs. ModDotPlot also supports detailed configuration through JSON files for creating highly customized plots.
- Efficient Computation: By leveraging k-mer-based identity estimation and a modimizer sketching technique, ModDotPlot significantly reduces the computational time required to produce dot plots, making it suitable for real-time analysis of large datasets.

#### Why ModDotPlot?

It was a critical tool in this project for visualizing and identifying centromeric regions within the genomes of the Cochlearia species. This tool allows for the creation of detailed dot plots that highlight regions of high sequence similarity, which are indicative of repetitive elements often found in centromeres. By applying ModDotPlot, I could effectively visualize these repetitive regions across large genomic scaffolds, enabling the identification of centromeric regions based on the characteristic dense and symmetric patterns typical of centromeric DNA. This visualization was essential for confirming the repeat analysis performed with TRASH and provided a clear and intuitive way to assess the structural integrity and conservation of these genomic regions across the different species analyzed.

#### Command usage:

```bash
moddotplot static --fasta "input_fasta_file_dir_for_excelsa" --output-dir "output_dir"
```

where:

- --fasta / -f: Specifies the input FASTA file or directory containing FASTA files. Multifasta files are accepted, but in interactive mode, only two sequences can be supported at a time.
- --output-dir / -o: Defines the output directory where the BED file and plots will be saved. If not specified, the default is the current working directory.
- --kmer / -k: Sets the k-mer size for the analysis. The default is 21, but it can be adjusted based on the specificity and sensitivity required.
- --identity / -id: Sets the minimum sequence identity cutoff threshold. The default is 86%, but lower thresholds are possible, although anything below 80% is generally not recommended.
- --delta: Adjusts the fraction of neighboring partitions' k-mers considered. The default is 0.5, and values should typically range between 0 and 1.
- --modimizer / -m: Defines the Modimizer sketch size, which affects the number of k-mers compared. Lower values increase speed but reduce accuracy.
- --resolution / -r: Sets the dotplot resolution by determining the number of partitions for each input sequence. The default is 1000, which overrides the --window parameter.
- --compare: If multiple sequences are input, this flag generates an "a vs. b" comparison plot in addition to self-identity plots.
- --compare-only: Generates only the "a vs. b" comparison plot, skipping self-identity plots.
- --ambiguous: Keeps k-mers with ambiguous IUPAC codes (e.g., NNNNNNNNNNN) in the analysis, which are excluded by default.
- --no-plot: Saves the matrix to a file but skips rendering of plots.


## Liftoff: Accurate Gene Annotation Lift-over Tool
Liftoff is a bioinformatics tool designed to accurately map gene annotations from one genome assembly to another, particularly between assemblies of the same or closely related species. Unlike traditional lift-over tools that require pre-generated chain files, Liftoff operates as a standalone tool, simplifying the process and increasing flexibility.

#### Key Features:
- Annotation Mapping: Liftoff efficiently maps gene annotations from a reference genome to a target genome using the Minimap2 alignment tool. It focuses on aligning gene sequences, allowing for successful gene mapping even when structural differences exist between genomes.
- Transcript and Gene Structure Preservation: Liftoff preserves the structure of transcripts and genes during the mapping process, ensuring that exons are aligned in a way that maximizes sequence identity.
- Handling of Multiple Gene Copies: The tool can identify additional gene copies present in the target genome that are not annotated in the reference genome, enhancing the completeness of gene annotations.
- Polishing Annotations: Liftoff includes an option to polish exon and CDS annotations, improving the accuracy of coding sequence preservation, particularly in cases where the initial lift-over may introduce errors such as frame shifts or missing start/stop codons.

#### Why Liftoff?

Liftoff was utilized in this project to transfer gene annotations from the reference genome of Cochlearia excelsa to the target genomes of Cochlearia groenlandica and Cochlearia pyrenaica. This tool was essential for identifying conserved genes within and around the centromeric regions across different species, which facilitated the comparative analysis of gene content and synteny. By accurately mapping gene annotations between genomes, Liftoff enabled the detection of conserved syntenic blocks, contributing to our understanding of evolutionary conservation and divergence in these genomic regions. The ability to lift over annotations was crucial for comparing structural and functional elements in the centromeric regions of these closely related species, providing insights into their genomic evolution.

#### Command usage:

```bash
liftoff -g ref_annotation_file_dir.gff3 \
        -o output_dir.gff3 \
        -u unmapped_features.txt \
        -dir intermediate_files_Gry \
        first_input_file_dir \
        second_input_file_dir
```
where: 

- g: Specifies the reference annotation file in GFF3 format, which contains the gene annotations from C. excelsa.
- o: Specifies the output file where the Liftoff results (the transferred annotations) will be saved.
- u: Specifies the file to store any features that could not be mapped to the target genome.
- dir: Specifies the directory for storing intermediate files generated during the Liftoff process.
  
Input Files:
- The first input file is the target genome sequence (C. groenlandica).
- The second input file is the reference genome sequence (C. excelsa).

## MUMmer4: A Versatile Genome Alignment Tool
MUMmer4 is a powerful and flexible system designed for the rapid alignment of DNA and protein sequences. It is capable of handling a wide range of genome sizes, from small bacterial genomes to large mammalian genomes. MUMmer4 is particularly effective for comparing and analyzing large and complex genomic datasets, offering tools for both nucleotide and protein alignments.

#### Key Features:

- High-Speed Alignment: Aligns two mammalian-sized genomes in approximately 3 hours on a typical high-performance workstation.
- Versatile Alignment Capabilities: Supports both nucleotide sequence alignments using nucmer and protein sequence alignments through six-frame translations using promer.
- Comprehensive Toolkit: Includes utilities for visualizing alignments, calculating SNPs, detecting tandem repeats, and analyzing synteny.
- Open Source: Available under the Artistic License 2.0, allowing for wide accessibility and modifications.
- Scalability: Efficiently handles all-vs-all comparisons, making it suitable for both small and large-scale genomic studies.

#### Why MUMmer4?

MUMmer4 was used in this project to align the genomes of different Cochlearia species with the reference genome of Cochlearia excelsa. This tool was essential for identifying conserved regions and structural variations, such as inversions and translocations, across the genomes. By visualizing these alignments, MUMmer4 helped me understand how centromeric regions have evolved differently among the species, making it a key tool for analyzing genomic similarities and differences efficiently.

## MCScanX: Multiple Collinearity Scan Toolkit
MCScanX is a powerful bioinformatics tool designed for synteny analysis, which identifies and visualizes collinear blocks of genes across multiple genomes. It builds upon the original MCScan algorithm, offering enhanced functionality and a suite of downstream analysis tools. MCScanX is widely used in comparative genomics studies to understand genome evolution, gene duplication, and structural variations between species.

#### Key Features:
- Synteny Detection: MCScanX detects syntenic blocks and progressively aligns them against reference genomes. This process reveals conserved gene orders across different genomes or within a single genome.
- Gene Duplication Classification: The tool classifies duplicated genes into categories such as whole-genome duplications, tandem duplications, and segmental duplications.
- Visualization Tools: MCScanX includes various visualization tools like dot plots, dual synteny plots, circular plots, and bar plots, helping researchers to graphically represent syntenic relationships and chromosomal rearrangements.
- Downstream Analyses: The toolset includes multiple downstream analysis programs for advanced studies, such as detecting syntenic tandem arrays, analyzing multiple alignments, and calculating Ka/Ks values for evolutionary studies.

#### Why MCScanX?

MCScanX was used in this project to identify and analyze syntenic blocks—conserved regions of gene order—across the genomes of the Cochlearia species. This tool was crucial for detecting evolutionary relationships by highlighting areas where the gene order is preserved, particularly around centromeric regions. By using MCScanX, I could better understand how these regions have been conserved or diverged over time, providing insights into the structural and functional evolution of the genomes. Its ability to efficiently compare multiple genomes made it an essential tool for exploring the synteny and structural variation in this study.

# SLURM: Simple Linux Utility for Resource Management

SLURM is a powerful, open-source job scheduling system used to manage and allocate resources on high-performance computing (HPC) clusters. It allows users to submit, manage, and monitor jobs efficiently, making it an essential tool for large-scale computational tasks. Since this project involved processing, analysis, comparison, and visualisation of large datas, I had to use SLURM to manage my jobs efficiently on the HPC cloud computer. 

## Why use SLURM?

- **Resource Management**: SLURM helps in managing and optimizing the usage of computational resources (CPU, memory, nodes) in a cluster environment.
- **Job Scheduling**: It allows users to schedule jobs efficiently, ensuring that resources are allocated fairly and optimally among users.
- **Scalability**: SLURM can manage clusters of various sizes, from a few nodes to thousands, making it highly scalable.
- **Flexibility**: Users can easily specify the resources required for their jobs, including the number of CPUs, memory, and time, which helps in tailoring the job execution environment.

## Basic SLURM commands:

### Run/Submit a new job:

```sbatch job_script.sh``` where job_script.sh file contains the series of commands we want to execute. Some example files can be found in the *scripts* folder of this repository. The .sh file should also contain some basic properties like memory allocation, time limit etc. at the beginning.

### Check job status:

```squeue -u your_username```

### Cancel a job:

```scancel job_id```

### View detailed info about jobs:

```scontrol show job job_id```

### Real-time resource allocation for a job:

```salloc --nodes=1 --ntasks=4 --time=01:00:00``` : this command requests 1 node with 4 tasks for a 1-hour interactive session.



