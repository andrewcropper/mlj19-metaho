This repository contains the code used in the experiments for the following paper:

R. Morel, A. Cropper and L. Ong. Typed meta-interpretive learning of logic programs.

# data description

For each experiment, the experimental data are in the folders marked by the date they were run on. The folders suffixed '-results' contain the outputs of the system.
The csv files prefixed by 'data-typed' contain the data collection for the typed experiments,
likewise for the 'data-untyped' files for the untyped runs of the experiments.
The '.table' files contain means and standard deviations. These files were generated from the csv files by the 'raw-data-to-plot-data.py' script.

# Rerunning the experiments

Each subfolder in the experiments directory contains a 'run.bash' script which runs the respective experiment. The ASP experiments are in the sub-folders named 'asp'.

To run the Prolog experiments a Prolog interpreter is needed. As the experiments were run on 'SWI-Prolog', this is recommended interpreter.
The ASP experiments require the [hexlite](https://github.com/hexhex/hexlite) ASP solver.

Contact rolf.morel@cs.ox.ac.uk with any queries.

# Online appendix for HEXMIL<sub>T</sub> encoding 

The file `appendix-HEXMIL_T-encoding.tx` contains the full encoding for typed HEXMIL.
