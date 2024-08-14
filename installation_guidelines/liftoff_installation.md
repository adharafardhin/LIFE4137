### Liftoff: A tool that accurately maps annotations in GFF or GTF between assemblies of the same, or closely-related species

Liftoff can be simply installed with the [conda package manager](https://docs.conda.io/en/latest/).

```
conda install -c bioconda liftoff
```

If you don't have conda installed, you need to install Minimap2 (following instructions [here](https://github.com/lh3/minimap2/releases/tag/v2.17)) and Liftoff from source or with pip.

```
git clone https://github.com/agshumate/Liftoff liftoff 
cd liftoff
python setup.py install
```
```
pip install Liftoff
```
