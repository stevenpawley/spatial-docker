FROM nvidia/cuda:11.7.1-devel-ubuntu20.04

# set timezone and location
ENV TZ=America/Edmonton
ARG DEBIAN_FRONTEND=noninteractive

# install system dependencies
RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y build-essential
RUN apt-get install -y libproj-dev
RUN apt-get install -y cmake
RUN apt-get install -y libgdal-dev
RUN apt-get install -y libgeos++-dev
RUN apt-get install -y libgeos-dev
RUN apt-get install -y libjq-dev
RUN apt-get install -y libprotobuf-dev
RUN apt-get install -y protobuf-compiler
RUN apt-get install -y libharfbuzz-dev
RUN apt-get install -y libgit2-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y libudunits2-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y libxml2-dev
RUN apt-get install -y apt-transport-https
RUN apt-get install -y libomp-dev
RUN apt-get install -y libopenblas-dev
RUN apt-get install -y libspatialindex-dev

# install R
RUN apt install -y wget
RUN apt install -y --no-install-recommends software-properties-common dirmngr
RUN wget -qO- https://cloud.r-project.org/bin/linux/ubuntu/marutter_pubkey.asc | tee -a /etc/apt/trusted.gpg.d/cran_ubuntu_key.asc
RUN add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
RUN apt install -y --no-install-recommends r-base

# install torch
RUN R -e "install.packages('torch')"
RUN R -e "install.packages('torchvision')"
RUN R -e "install.packages('torchaudio')"
RUN R -e "install.packages('torchdatasets')"
RUN R -e "install.packages('dplyr')"
RUN R -e "install.packages('data.table')"
RUN R -e "install.packages('ggplot2')"
RUN R -e "install.packages('pins')"

RUN R -e "install.packages('luz')"
RUN R -e "install.packages('languageserver')"
RUN R -e "install.packages('jsonlite')"
RUN R -e "install.packages('httpgd')"
RUN R -e "torch::install_torch()"

# create virtualenv for radian
RUN apt install -y python3-venv python3-pip
RUN python3 -m venv ~/.virtualenvs/base
ENV VIRTUAL_ENV ~/.virtualenvs/base
ENV PATH ~/.virtualenvs/base/bin:$PATH
RUN pip install radian

# docker run -it --volume C:/Users/steve/Projects:/home/Projects --gpus all rtorch
