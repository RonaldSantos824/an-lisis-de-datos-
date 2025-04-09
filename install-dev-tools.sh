#!/bin/bash

# Salir si hay un error
set -e

# Actualizar paquetes
sudo apt-get update

# Instalar dependencias para Chrome
sudo apt-get install -y unzip wget gnupg

# Instalar Google Chrome
wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" | sudo tee /etc/apt/sources.list.d/google-chrome.list
sudo apt-get update
sudo apt-get install -y google-chrome-stable

# Instalar ChromeDriver (Versión 116)
CHROMEDRIVER_VERSION="116.0.5845.96"
CHROMEDRIVER_URL="https://storage.googleapis.com/chrome-for-testing-public/$CHROMEDRIVER_VERSION/linux64/chromedriver-linux64.zip"
wget -O /tmp/chromedriver.zip "$CHROMEDRIVER_URL"
unzip -o /tmp/chromedriver.zip -d /tmp/
sudo mv /tmp/chromedriver-linux64/chromedriver /usr/local/bin/
sudo chmod +x /usr/local/bin/chromedriver
rm -rf /tmp/chromedriver.zip /tmp/chromedriver-linux64

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
