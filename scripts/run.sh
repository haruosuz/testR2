#!/bin/bash
set -euo pipefail

# Creating directories

mkdir data analysis

# Downloading Data

wget -P data/ \
 https://raw.githubusercontent.com/vsbuffalo/bds-files/master/chapter-07-unix-data-tools/example.bed

# Running R scripts

Rscript --vanilla scripts/my_analysis.R

