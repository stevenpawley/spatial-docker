FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

EXPOSE 8787
EXPOSE 8888

RUN apt-get update && apt-get -y upgrade
RUN apt-get install -y \
  libspatialindex-dev \
  openjdk-8-jre \
  libproj-dev \
  cmake \
  libgdal-dev \
  libgeos++-dev \
  libgeos-dev \
  python3-pip \
  nodejs \
  npm \
  libjq-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libharfbuzz-dev \
  libfribidi-dev

RUN apt-get install -y \
  grass-dev \
  saga \
  python3-saga

RUN apt-get install -y \
  npm \
  nodejs

RUN pip3 install --upgrade \
  pysheds \
  scipy \
  numpy \
  rasterio \
  fiona \
  geopandas \
  seaborn \
  statsmodels \
  scikit-learn \
  scikit-image \
  xarray \
  pandas \
  descartes \
  jupyter \
  numba \
  virtualenv \
  ipykernel \
  pyyaml \
  jupyterlab \
  libpysal \
  esda \
  black \
  pytest \
  ipympl \
  category_encoders \
  imbalanced-learn \
  tqdm \
  jupyterlab-git \
  openpyxl \
  jupyterlab-lsp \
  dask

RUN pip3 install git+https://github.com/stevenpawley/Pyspatialml
RUN pip3 install git+https://github.com/stevenpawley/numba-terrain

RUN apt-get install -y \
  libgit2-dev \
  libcurl4-openssl-dev \
  libudunits2-dev \
  libssl-dev \
  build-essential \
  libxml2-dev \
  apt-transport-https \
  software-properties-common \
  libmagick++-dev \
  libomp-dev \
  libsodium-dev \
  libopenblas-dev \
  libglu1-mesa-dev \
  freeglut3-dev \
  mesa-common-dev \
  libgdal-dev \
  libproj-dev \
  libgeos-dev \
  libcairo2-dev \
  libnetcdf-dev \
  libnode-dev \
  libclang-dev \
  gdebi \
  r-base

RUN R -e "install.packages('raster')"
RUN R -e "install.packages('terra')"
RUN R -e "install.packages('sf')"
RUN R -e "install.packages('stars')"
RUN R -e "install.packages('Rsagacmd')"
RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('tidymodels')"
RUN R -e "install.packages('furrr')"
RUN R -e "install.packages('readxl')"
RUN R -e "install.packages('ranger')"
RUN R -e "install.packages('devtools')"
RUN R -e "install.packages('roxygen2')"
RUN R -e "install.packages('earth')"
RUN R -e "install.packages('kknn')"
RUN R -e "install.packages('xgboost')"
RUN R -e "install.packages('glmnet')"
RUN R -e "install.packages('nnet')"
RUN R -e "install.packages('here')"
RUN R -e "install.packages('glue')"
RUN R -e "install.packages('leaflet')"
RUN R -e "install.packages('leaflet.extras
')"
RUN R -e "install.packages('discrim')"
RUN R -e "install.packages('themis')"
RUN R -e "install.packages('DALEX')"
RUN R -e "install.packages('sen2r')"
RUN R -e "install.packages('rmapshaper')"
RUN R -e "install.packages('reticulate')"
RUN R -e "install.packages('languageserver')"
RUN R -e "install.packages('ggsn')"
