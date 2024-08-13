# **CIFSA: LIFE4137 Bioinformatics Individual Research Project**

## **Project Title and Description**
**Comparative Genomic Analysis of Centromeric Regions in Cochlearia Species: Insights into Evolutionary Conservation and Structural Variation**  
ToDo: Add short description here

## **Overview of the Project**
### **Aims**
- ToDo: Add aims here

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

## Liftoff: Accurate Gene Annotation Lift-over Tool
Liftoff is a bioinformatics tool designed to accurately map gene annotations from one genome assembly to another, particularly between assemblies of the same or closely related species. Unlike traditional lift-over tools that require pre-generated chain files, Liftoff operates as a standalone tool, simplifying the process and increasing flexibility.

#### Key Features:
- Annotation Mapping: Liftoff efficiently maps gene annotations from a reference genome to a target genome using the Minimap2 alignment tool. It focuses on aligning gene sequences, allowing for successful gene mapping even when structural differences exist between genomes.
- Transcript and Gene Structure Preservation: Liftoff preserves the structure of transcripts and genes during the mapping process, ensuring that exons are aligned in a way that maximizes sequence identity.
- Handling of Multiple Gene Copies: The tool can identify additional gene copies present in the target genome that are not annotated in the reference genome, enhancing the completeness of gene annotations.
- Polishing Annotations: Liftoff includes an option to polish exon and CDS annotations, improving the accuracy of coding sequence preservation, particularly in cases where the initial lift-over may introduce errors such as frame shifts or missing start/stop codons.
