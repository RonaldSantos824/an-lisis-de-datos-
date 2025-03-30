#!/bin/bash

# Actualizar paquetes
sudo apt-get update

# Instalar dependencias para Chrome
sudo apt-get install -yqq unzip wget

# Instalar Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google-chrome.list'
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Instalar ChromeDriver (Versión 116)
wget -O /tmp/chromedriver.zip https://edgedl.me.gvt1.com/edgedl/chrome/chrome-for-testing/116.0.5845.96/linux64/chromedriver-linux64.zip
unzip /tmp/chromedriver.zip -d /usr/local/bin/

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
