FROM ubuntu:24.04

RUN apt-get update && apt-get -y upgrade

# general dependencies
RUN apt install -y \
    libprotobuf-dev \
    protobuf-compiler \
    libharfbuzz-dev \
    libfribidi-dev \
    npm \
    nodejs \
    git \
    libglpk-dev \
    libgmp3-dev \
    libxml2-dev \
    libssl-dev \
    default-jdk \
    gdal-bin \
    libnetcdf-dev \
    libudunits2-dev \
    libfftw3-dev \
    libjpeg-dev \
    libpng-dev \
    libcurl4-openssl-dev \
    libquantlib0-dev \
    libpq-dev \
    libgtk-3-dev \
    libgit2-dev \
    build-essential \
    apt-transport-https \
    software-properties-common \
    libmagick++-dev \
    libomp-dev \
    libsodium-dev \
    libopenblas-dev \
    freeglut3-dev \
    mesa-common-dev \
    libcairo2-dev \
    libnode-dev \
    libclang-dev \
    gdebi-core \
    curl \
    python3-poetry \
    python3.12-venv \
    openssh-server \
    libmysqlclient-dev \
    libfontconfig1-dev \
    qpdf \
    pandoc

# gis packages
RUN apt-get install -y \
    grass-dev \
    saga \
    libgdal-grass

# python packages
RUN apt-get install -y \
    gcc \
    python3-dev \
    python3-rasterio \
    python3-geopandas \
    python3-sklearn \
    python3-skimage \
    python3-seaborn \
    python3-xarray \
    python3-pandas \
    python3-openpyxl \
    python3-folium \
    python3-xgboost \
    python3-ipykernel \
    python3-sentinelsat \
    python3-notebook \
    python3-affine \
    libgdal-dev \
    python3-gdal \
    black \
    python3-xarray \
    python3-rioxarray \
    python3-xarray-sentinel

# setup R
RUN apt install -y r-base-dev
RUN wget https://github.com/quarto-dev/quarto-cli/releases/download/v1.6.39/quarto-1.6.39-linux-arm64.deb
RUN dpkg -i quarto-1.6.39-linux-arm64.deb
RUN rm quarto-1.6.39-linux-arm64.deb

RUN R -e "install.packages(c('devtools', 'rcmdcheck', 'httpgd, httpuv', 'languageserver', 'jsonlite', 'rlang', 'reticulate'))"
RUN R -e "devtools::install_github('osgeo/rgrass')"

# setup grassdata
WORKDIR /grassdb
