#!/bin/bash

# Stop script on any error
set -e

# Update system package index
echo "Updating system package index..."
sudo apt-get update

# Install Python3 and pip
echo "Checking for Python3 and pip..."
if ! command -v python3 &> /dev/null; then
    echo "Python3 not found. Installing..."
    sudo apt-get install -y python3
else
    echo "Python3 is already installed."
fi

if ! command -v pip3 &> /dev/null; then
    echo "pip3 not found. Installing..."
    sudo apt-get install -y python3-pip
else
    echo "pip3 is already installed."
fi

# Install Python libraries
echo "Installing Python libraries..."
pip3 install llama-index qdrant_client torch transformers flask flask-cors

# Download and install Ollama
echo "Downloading and installing Ollama..."
curl -fsSL https://ollama.com/install.sh | sh

echo "Starting the python script!"
python3 ./ai/ai.py

echo "Installing virtual server!"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

npm install next react react-dom

echo "Version: "
brew --version

brew update
brew install node

npm run dev 