FROM continuumio/miniconda3

FROM gitpod/workspace-full

RUN conda init bash

# adding some more things I want
RUN conda install -n base -c conda-forge mamba -y
RUN mamba install -c conda-forge curl nano
RUN mamba create -n genelab-utils -c conda-forge -c bioconda -c defaults -c astrobiomike 'genelab-utils>=1.1.02' -y
