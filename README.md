----------

Haruo Suzuki  
Last Update: 2015-11-29  

----------

# testR2 Project
Project started 2015-11-18.  

This is an example of a project directory, project documentation, and shell and R scripts.

## Project directories

    testR2/
     README.md: project documentation
     data/: contains data files
     scripts/: contains general project-wide scripts
     analysis/: contains results of data analyses

## Data

Data downloaded on 2015-11-18 from <https://github.com/vsbuffalo/bds-files/tree/master/chapter-07-unix-data-tools> into `data/`:

    data/example.bed

## Scripts

The shell script `scripts/run.sh` automatically carries out the entire steps: creating directories (`data/` and `analysis/`), downloading data, running the R script `scripts/my_analysis.R` that generates two output files (`analysis/plot.pdf` and `analysis/summary.csv`).

Let's run this (in the `testR2/` directory) using:

    bash scripts/run.sh

----------


