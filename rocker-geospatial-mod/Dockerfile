FROM rocker/geospatial:latest

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
  libfribidi-dev \
  wget

RUN apt-get install -y grass-dev
RUN apt-get install -y saga

ENV CONDA_DIR /opt/conda
RUN wget "https://github.com/conda-forge/miniforge/releases/latest/download/Miniforge3-$(uname)-$(uname -m).sh"
RUN bash Miniforge3-$(uname)-$(uname -m).sh -b -p /opt/conda

ENV PATH=$CONDA_DIR/bin:$PATH

# Make RUN commands use the new environment:
RUN conda create --name geospatial
SHELL ["conda", "run", "-n", "geospatial", "/bin/bash", "-c"]

RUN conda install black tqdm jupyterlab jupyterlab-git jupyterlab-lsp jedi-language-server
RUN conda install rasterio geopandas pandas seaborn
RUN conda install scikit-learn
RUN conda install scikit-image
RUN conda install xarray
RUN conda install dask
RUN conda install openpyxl
RUN conda install sentinelsat
RUN pip install pyhere
RUN pip install grass-session
RUN pip install git+https://github.com/stevenpawley/Pyspatialml
