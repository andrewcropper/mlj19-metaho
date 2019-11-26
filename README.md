This repository contains the code used in the experiments for the following paper:

A. Cropper, R. Morel, and S. H. Muggleton - [Learning higher-order logic programs](http://andrewcropper.com/pubs/mlj19-metaho.pdf) - Machine learning 

# Stucture of the exprimental code

The paper contains four experiments, corresponding to the four folders in this repo.
Each folder for an experiment contains the subfolders `data`, `programs` and `results`, which contain the experimental data used for the paper.
The `runner.py` file was used to generete this data.
The `data` subfolder contains the examples used to learn from as well as the testing data.
The `programs` subfolder contains the programs learned by the different algorithms.
The `results` subfolder contains the outcome for running the learned programs on the testing data.

# Rerunning the experiments

Each subfolder in the experiments directory contains a 'runner.py' script which runs the respective experiment. Upon running this script to completion some statistics on average accuracy and running times will be printed. The `runner.py` files contain a number of parameters that can be set, e.g. to only run experiment for Prolog or just with ASP. 

To run the Prolog experiments a Prolog interpreter is needed. As the experiments were run on 'SWI-Prolog', this is recommended interpreter.
The ASP experiments require the [hexlite](https://github.com/hexhex/hexlite) ASP solver.

Contact andrew.cropper@cs.ox.ac.uk with any queries.
