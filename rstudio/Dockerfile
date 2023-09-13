FROM rocker/rstudio:latest

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y \
  nodejs \
  npm \
  libjq-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libharfbuzz-dev \
  libfribidi-dev \
  libglpk-dev \
  libgmp3-dev \
  libquantlib0-dev \
  libpq-dev \
  libmagick++-dev

# java runtime
RUN apt-get install -y \
  default-jdk \
  openjdk-11-jre

# used for R
RUN apt-get install -y \
  pandoc \
  libcurl4-openssl-dev \
  build-essential \
  apt-transport-https \
  software-properties-common \
  libomp-dev \
  libsodium-dev \
  libopenblas-dev \
  libglu1-mesa-dev \
  freeglut3-dev \
  mesa-common-dev \
  libcairo2-dev \
  libnode-dev \
  libclang-dev \
  gdebi-core \
  curl

# geospatial deps
RUN apt-get install -y \
  gdal-bin \
  libpng-dev \
  libnetcdf-dev \
  libudunits2-dev \
  libjpeg-dev \
  libspatialindex-dev \
  libproj-dev \
  libgdal-dev \
  libgeos++-dev \
  libgeos-dev \
  libfftw3-dev

# core utils
RUN apt-get install -y \
  cmake \
  libxml2-dev \
  libssl-dev \
  python3-pip \
  wget

# git
RUN apt-get install -y git libgit2-dev

# gis packages
RUN apt-get install -y grass-dev saga

CMD ["/init"]
