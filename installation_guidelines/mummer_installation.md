# MUMmer4: A versatile alignment tool for DNA and protein sequences

### Prerequisites:

- Ensure you have GCC (g++ version >= 4.7) and essential compilation tools installed (e.g., build-essential on Debian/Ubuntu).
- MUMmer4 requires the following utilities (must be accessible via the system path):
  - perl5 (version 5.6.0 or higher)
  - sh
  - sed
  - awk
 
### Download the latest release from here https://github.com/mummer4/mummer/releases

### Compilation and installation:

```
./configure --prefix=/path/to/installation
make
make install
```

- If --prefix is omitted, the software will be installed in /usr/local. Use sudo make install if installing in a system directory.
