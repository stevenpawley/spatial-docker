FROM ubuntu:mantic

RUN apt-get update && apt-get -y upgrade

# gis packages
RUN apt-get install -y grass-dev saga

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

RUN pip install jupyterlab --break-system-packages
RUN pip install jupyterlab-lsp --break-system-packages
RUN pip install jupyterlab-code-formatter --break-system-packages
RUN pip install jupyterlab-git --break-system-packages
RUN pip install jupyterlab-github --break-system-packages
RUN pip install jupyterlab_materialdarker --break-system-packages
RUN pip install pyarrow pins adlfs --break-system-packages

# setup grassdata
WORKDIR /home/ubuntu

EXPOSE 8887

CMD ["jupyter-lab","--ip=0.0.0.0","--no-browser","--allow-root","--port=8887"]