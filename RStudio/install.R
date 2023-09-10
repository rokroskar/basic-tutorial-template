# This file contains packages which should be added to the notebook
# during the build process. It is standard R code which is run during
# the build process and typically comprises a set of `install.packages()`
# commands.
#
# For example, remove the comment from the line below if you wish to
# install the `ggplot2` package.
#
# install.packages('ggplot2')

install.packages("reticulate")

## Package setup
# configure reticulate to use the conda python installation (and not prompt for miniconda)
library(reticulate)
use_python("/opt/conda/bin/python3")
