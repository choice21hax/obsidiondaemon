#!/bin/bash

# Set script to exit immediately on error
set -e

# Update and install prerequisites
echo "Updating package list and installing prerequisites..."
sudo apt update
sudo apt install -y python3 python3-pip curl git

# Install Docker if not already installed
if ! command -v docker &> /dev/null; then
    echo "Docker not found, installing Docker..."
    sudo apt install -y docker.io
    sudo systemctl start docker
    sudo systemctl enable docker
else
    echo "Docker is already installed."
fi

# Clone the Obsidian Docker Daemon repository
REPO_URL="https://github.com/choice21hax/obsidiandaemon.git"
INSTALL_DIR="$HOME/obsidiandaemon"
echo "Cloning the repository..."
git clone $REPO_URL $INSTALL_DIR

# Change directory to the installed folder
cd $INSTALL_DIR

# Install Python dependencies
echo "Installing Python dependencies..."
pip3 install -r requirements.txt

# Start the Daemon
echo "Starting the Daemon..."
python3 daemon.py &

# Provide final instructions
echo "Installation complete. The Obsidian Docker Daemon is now running."
echo "Access it at http://localhost:5000."
