FROM ubuntu:mantic

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
  libfribidi-dev \
  wget

RUN apt-get install -y grass-dev
RUN apt-get install -y saga

ENV CONDA_DIR /opt/conda
RUN wget "https://github.com/conda-forge/miniforge/releases/latest/download/Mambaforge-$(uname)-$(uname -m).sh"
RUN bash Mambaforge-$(uname)-$(uname -m).sh -b -p /opt/conda

ENV PATH=$CONDA_DIR/bin:$PATH

RUN mamba install black
RUN mamba install tqdm
RUN mamba install jupyterlab
RUN mamba install jupyterlab-git
RUN mamba install jupyterlab-lsp
RUN mamba install jedi-language-server
RUN pip install pyhere
RUN pip install grass-session
RUN mamba install rasterio
RUN mamba install fiona
RUN mamba install geopandas
RUN mamba install pandas
RUN mamba install seaborn
RUN mamba install scikit-learn
RUN mamba install scikit-image
RUN mamba install xarray
RUN mamba install dask
RUN mamba install openpyxl
RUN mamba install sentinelsat
RUN pip install git+https://github.com/stevenpawley/Pyspatialml

USER ubuntu
WORKDIR /home/ubuntu
