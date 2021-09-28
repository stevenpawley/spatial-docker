FROM ubuntu:impish

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8787

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y \
  libspatialindex-dev \
  openjdk-11-jre \
  libproj-dev \
  cmake \
  libgdal-dev \
  libgeos++-dev \
  libgeos-dev \
  nodejs \
  npm \
  libjq-dev \
  libprotobuf-dev \
  protobuf-compiler \
  libharfbuzz-dev \
  libfribidi-dev

RUN apt-get install -y \
  saga

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

RUN apt-get install -y \
  python3-pip

RUN pip3 install radian

RUN R -e "install.packages('raster')"
RUN R -e "install.packages('terra')"
RUN R -e "install.packages('sf')"
RUN R -e "install.packages('stars')"
RUN R -e "install.packages('Rsagacmd')"
RUN R -e "install.packages('automap')"
RUN R -e "install.packages('gstat')"
RUN R -e "install.packages('blockCV')"
RUN R -e "install.packages('cubelyr')"
RUN R -e "install.packages('gdalUtilities')"
RUN R -e "install.packages('nabor')"
RUN R -e "install.packages('nngeo')"
RUN R -e "install.packages('smoothr')"
RUN R -e "install.packages('rmapshaper')"

RUN R -e "install.packages('tidymodels')"
RUN R -e "install.packages('discrim')"
RUN R -e "install.packages('DALEX')"
RUN R -e "install.packages('earth')"
RUN R -e "install.packages('kknn')"
RUN R -e "install.packages('xgboost')"
RUN R -e "install.packages('glmnet')"
RUN R -e "install.packages('nnet')"
RUN R -e "install.packages('ranger')"
RUN R -e "install.packages('lightgbm')"
RUN R -e "install.packages('keras')"
RUN R -e "install.packages('e1071')"
RUN R -e "install.packages('kernlab')"

RUN R -e "install.packages('tidyverse')"
RUN R -e "install.packages('furrr')"
RUN R -e "install.packages('readxl')"
RUN R -e "install.packages('lubridate')"
RUN R -e "install.packages('patchwork')"
RUN R -e "install.packages('ggiraph')"
RUN R -e "install.packages('ggridges')"
RUN R -e "install.packages('beeswarm')"
RUN R -e "install.packages('ggside')"
RUN R -e "install.packages('pins')"
RUN R -e "install.packages('plotly')"
RUN R -e "install.packages('xaringan')"

RUN R -e "install.packages('randomcoloR')"
RUN R -e "install.packages('ggsci')"
RUN R -e "install.packages('scico')"
RUN R -e "install.packages('colorspace')"

RUN R -e "install.packages('here')"
RUN R -e "install.packages('glue')"
RUN R -e "install.packages('usethis')"
RUN R -e "install.packages('reticulate')"
RUN R -e "install.packages('languageserver')"
RUN R -e "install.packages('httr')"
RUN R -e "install.packages('gt')"
RUN R -e "install.packages('fs')"
RUN R -e "install.packages('devtools')"
RUN R -e "install.packages('roxygen2')"
RUN R -e "install.packages('rvest')"
RUN R -e "install.packages('renv')"
RUN R -e "install.packages('rsconnect')"

RUN R -e "install.packages('shiny')"
RUN R -e "install.packages('shinycssloaders')"
RUN R -e "install.packages('shinyBS')"
RUN R -e "install.packages('shinyalert')"
RUN R -e "install.packages('bslib')"

RUN R -e "install.packages('leaflet')"
RUN R -e "install.packages('leaflet.extras')"
RUN R -e "install.packages('leafgl')"
RUN R -e "install.packages('leafem')"
RUN R -e "install.packages('leafsync')"
RUN R -e "install.packages('manipulateWidget')"
RUN R -e "install.packages('ggsn')"
RUN R -e "install.packages('ggmap')"
RUN R -e "install.packages('osmdata')"
