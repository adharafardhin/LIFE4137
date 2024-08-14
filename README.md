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

| Section                     | Description                                                                      |
|-----------------------------|----------------------------------------------------------------------------------|
| **Guideline Readme Files**  | Instructions and guidelines for the project.                                     |
| **Datasets**                | Contains all the datasets used in the project, including source and preprocessing details. |
| **Tools**                   | A list of bioinformatics tools and software required for the project.            |
| **Scripts**                 | Custom scripts developed for data analysis, processing, and visualization.       |

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

## ModDotPlot: Rapid and Interactive Visualization of Complex Repeats
ModDotPlot is a powerful visualization tool designed for creating dot plots that showcase complex repeat structures in large genomic sequences. It generates identity heatmaps by rapidly approximating the Average Nucleotide Identity (ANI) between pairwise combinations of genomic intervals. This tool is particularly useful for researchers who need to visualize and compare large sequences or whole genomes efficiently.

#### Key Features:
- Interactive and Static Modes: ModDotPlot offers both an interactive mode, where users can explore genomic data in real-time using a web interface, and a static mode, which quickly generates publication-ready plots.
- Flexible Input Options: The tool supports various input configurations, including single or multi-FASTA files, and can handle up to two sequences in interactive mode. It also allows for the comparison of different sequences.
- Customizable Visualization: Users can adjust parameters such as k-mer size, resolution, and color palettes to tailor the dot plots to their specific research needs. ModDotPlot also supports detailed configuration through JSON files for creating highly customized plots.
- Efficient Computation: By leveraging k-mer-based identity estimation and a modimizer sketching technique, ModDotPlot significantly reduces the computational time required to produce dot plots, making it suitable for real-time analysis of large datasets.

## Liftoff: Accurate Gene Annotation Lift-over Tool
Liftoff is a bioinformatics tool designed to accurately map gene annotations from one genome assembly to another, particularly between assemblies of the same or closely related species. Unlike traditional lift-over tools that require pre-generated chain files, Liftoff operates as a standalone tool, simplifying the process and increasing flexibility.

#### Key Features:
- Annotation Mapping: Liftoff efficiently maps gene annotations from a reference genome to a target genome using the Minimap2 alignment tool. It focuses on aligning gene sequences, allowing for successful gene mapping even when structural differences exist between genomes.
- Transcript and Gene Structure Preservation: Liftoff preserves the structure of transcripts and genes during the mapping process, ensuring that exons are aligned in a way that maximizes sequence identity.
- Handling of Multiple Gene Copies: The tool can identify additional gene copies present in the target genome that are not annotated in the reference genome, enhancing the completeness of gene annotations.
- Polishing Annotations: Liftoff includes an option to polish exon and CDS annotations, improving the accuracy of coding sequence preservation, particularly in cases where the initial lift-over may introduce errors such as frame shifts or missing start/stop codons.

## MUMmer4: A Versatile Genome Alignment Tool
MUMmer4 is a powerful and flexible system designed for the rapid alignment of DNA and protein sequences. It is capable of handling a wide range of genome sizes, from small bacterial genomes to large mammalian genomes. MUMmer4 is particularly effective for comparing and analyzing large and complex genomic datasets, offering tools for both nucleotide and protein alignments.

#### Key Features:

- High-Speed Alignment: Aligns two mammalian-sized genomes in approximately 3 hours on a typical high-performance workstation.
- Versatile Alignment Capabilities: Supports both nucleotide sequence alignments using nucmer and protein sequence alignments through six-frame translations using promer.
- Comprehensive Toolkit: Includes utilities for visualizing alignments, calculating SNPs, detecting tandem repeats, and analyzing synteny.
- Open Source: Available under the Artistic License 2.0, allowing for wide accessibility and modifications.
- Scalability: Efficiently handles all-vs-all comparisons, making it suitable for both small and large-scale genomic studies.

## MCScanX: Multiple Collinearity Scan Toolkit
MCScanX is a powerful bioinformatics tool designed for synteny analysis, which identifies and visualizes collinear blocks of genes across multiple genomes. It builds upon the original MCScan algorithm, offering enhanced functionality and a suite of downstream analysis tools. MCScanX is widely used in comparative genomics studies to understand genome evolution, gene duplication, and structural variations between species.

#### Key Features:
- Synteny Detection: MCScanX detects syntenic blocks and progressively aligns them against reference genomes. This process reveals conserved gene orders across different genomes or within a single genome.
- Gene Duplication Classification: The tool classifies duplicated genes into categories such as whole-genome duplications, tandem duplications, and segmental duplications.
- Visualization Tools: MCScanX includes various visualization tools like dot plots, dual synteny plots, circular plots, and bar plots, helping researchers to graphically represent syntenic relationships and chromosomal rearrangements.
- Downstream Analyses: The toolset includes multiple downstream analysis programs for advanced studies, such as detecting syntenic tandem arrays, analyzing multiple alignments, and calculating Ka/Ks values for evolutionary studies.

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



