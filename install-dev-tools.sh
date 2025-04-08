#!/bin/bash

# Actualizar paquetes
sudo apt-get update

# Instalar dependencias básicas
sudo apt-get install -yqq unzip wget

# Instalar librerías de Python
pip3 install --no-cache-dir \
    selenium==4.17.2 \
    beautifulsoup4==4.12.3 \
    scrapy==2.11.1 \
    cloudscraper==1.2.71 \
    lxml==5.2.1 \
    requests==2.31.0 \
    httpx==0.27.0 \
    pandas==2.2.1 \
    numpy==1.26.4 \
    openpyxl==3.1.2 \
    multiprocessing-logging==0.3.4 \
    tqdm==4.66.2

echo "Instalación completada con éxito"
