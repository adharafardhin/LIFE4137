# **TRASH: Tandem Repeat Annotation and Structural Hierarchy**

**TRASH** is a bioinformatics tool designed for identifying and analyzing tandem repeats in genomic sequences and investigating their higher-order structures.

## **Installation Guide**

### **Linux Installation:**

1. **Clone the TRASH repository:**

   ```bash
   git clone https://github.com/vlothec/TRASH
   cd TRASH

2. Install R:

   ```
   conda create -n name -c conda-forge r-base=4.1.3 zlib
   conda activate name
   ```

2. **Install TRASH:**

   ```bash
   chmod +x TRASH_install.sh
   ./TRASH_install.sh

3. Verify installation:

   ```bash
   ./TRASH_run.sh --help

### **Windows Installation:**

1. **Clone the TRASH repository:**

   ```bash
   git clone https://github.com/vlothec/TRASH
   cd TRASH

2. Install TRASH by identifying the Rscript.exe directory in your R installation, navigating to the src directory, and running the installation script:

   ```bash
   cd src
   [R installation directory]\Rscript.exe TRASH_install.R

3. Verify installation:

   ```bash
   [R installation directory]\Rscript.exe TRASH_run.R --help


