FROM ubuntu:impish

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8888

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y \
  libspatialindex-dev \
  openjdk-11-jre \
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
  dask \
  jedi-language-server

RUN pip3 install git+https://github.com/stevenpawley/Pyspatialml
