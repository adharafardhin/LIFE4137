# Installation: 

Clone the repository:

```
git clone https://github.com/marbl/ModDotPlot.git
cd ModDotPlot
```

Although optional, it's recommended to setup a virtual environment before using ModDotPlot:

```
python -m venv venv
source venv/bin/activate
```

Once activated, you can install the required dependencies:

```
python -m pip install .
```

Finally, confirm that the installation was installed correctly by running `moddotplot -h`:
```       
  __  __           _   _____        _     _____  _       _   
 |  \/  |         | | |  __ \      | |   |  __ \| |     | |  
 | \  / | ___   __| | | |  | | ___ | |_  | |__) | | ___ | |_ 
 | |\/| |/ _ \ / _` | | |  | |/ _ \| __| |  ___/| |/ _ \| __|
 | |  | | (_) | (_| | | |__| | (_) | |_  | |    | | (_) | |_ 
 |_|  |_|\___/ \__,_| |_____/ \___/ \__| |_|    |_|\___/ \__|

usage: moddotplot [-h] {interactive,static} ...

ModDotPlot: Visualization of Complex Repeat Structures

positional arguments:
  {interactive,static}  Choose mode: interactive or static
    interactive         Interactive mode commands
    static              Static mode commands

options:
  -h, --help            show this help message and exit`
  ```
--- 
