FROM continuumio/miniconda3

# adding some more things I want
RUN sudo install-packages \
         curl \
         nano

# RUN conda init bash

# RUN source ~/.bashrc

RUN conda install -n base -c conda-forge mamba -y

RUN mamba create -n genelab-utils -c conda-forge -c bioconda -c defaults -c astrobiomike 'genelab-utils>=1.1.02' -y
