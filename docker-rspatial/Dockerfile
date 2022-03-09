FROM ubuntu:jammy

ENV DEBIAN_FRONTEND noninteractive
ENV TZ=Etc/UTC
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

EXPOSE 8787

RUN apt-get update && apt-get -y upgrade

RUN apt-get install -y libspatialindex-dev
RUN apt-get install -y openjdk-11-jre
RUN apt-get install -y libproj-dev
RUN apt-get install -y cmake
RUN apt-get install -y libgdal-dev
RUN apt-get install -y libgeos++-dev
RUN apt-get install -y libgeos-dev
RUN apt-get install -y nodejs
RUN apt-get install -y npm
RUN apt-get install -y libjq-dev
RUN apt-get install -y libprotobuf-dev
RUN apt-get install -y protobuf-compiler
RUN apt-get install -y libharfbuzz-dev
RUN apt-get install -y libfribidi-dev

RUN apt-get install -y saga
RUN apt-get install -y grass-dev

RUN apt-get install -y libgit2-dev
RUN apt-get install -y libcurl4-openssl-dev
RUN apt-get install -y libudunits2-dev
RUN apt-get install -y libssl-dev
RUN apt-get install -y build-essential
RUN apt-get install -y libxml2-dev
RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common
RUN apt-get install -y libmagick++-dev
RUN apt-get install -y libomp-dev
RUN apt-get install -y libsodium-dev
RUN apt-get install -y libopenblas-dev
RUN apt-get install -y libglu1-mesa-dev
RUN apt-get install -y freeglut3-dev
RUN apt-get install -y mesa-common-dev
RUN apt-get install -y libcairo2-dev
RUN apt-get install -y libnetcdf-dev
RUN apt-get install -y libnode-dev
RUN apt-get install -y libclang-dev
RUN apt-get install -y gdebi
RUN apt-get install -y wget
RUN apt-get install -y r-base

RUN apt-get install -y python3-pip
RUN pip3 install radian

RUN R -e "install.packages('parallel')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('httpgd')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('terra', 'raster', 'sf', 'stars', 'Rsagacmd'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('automap', 'gstat', 'blockCV', 'cubelyr', 'gdalUtilities'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('nabor', 'nngeo', 'mmand'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('smoothr', 'rmapshaper'))"

RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('targets', 'tarchetypes', 'AzureStor'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('tidymodels')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('discrim')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('DALEX')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('earth')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('kknn')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('xgboost')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('glmnet')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('nnet')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('ranger')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('lightgbm')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('keras')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('torch')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('e1071')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('kernlab')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('Cubist')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('FNN')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mda')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('DiceKriging')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3learners')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3pipelines')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3tuning')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('paradox')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3filters')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3viz')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlr3hyperband')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('mlrbenchmark')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('data.table')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('future')"

RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('tidyverse')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('furrr')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('readxl')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('lubridate')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('patchwork')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('beeswarm', 'ggdist', 'ggside', 'ggridges'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('pins')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('plotly')"

RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('randomcoloR')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('ggsci')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('scico')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('colorspace')"

RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('here', 'glue', 'usethis', 'fs'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('reticulate')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('languageserver', 'httr', 'jsonlite'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages('gt')"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('devtools', 'roxygen2', 'renv', 'rsconnect'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('shiny', 'shinycssloaders', 'shinyBS', 'shinyalert', 'bslib'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('leaflet', 'leaflet.extras', 'leafgl', 'leafem', 'leafsync', 'manipulateWidget'))"
RUN R -e "options(Ncpus=parallel::detectCores()); install.packages(c('ggmap', 'osmdata', 'ggsn'))"
RUN R -e "devtools::install_github('mlr-org/mlr3extralearners')"
