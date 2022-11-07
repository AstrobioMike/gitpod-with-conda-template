FROM continuumio/miniconda3

RUN conda init bash

RUN conda install -n base -c conda-forge mamba -y

RUN mamba create -n genelab-utils -c conda-forge -c bioconda -c defaults -c astrobiomike 'genelab-utils>=1.1.02' -y
