#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/LP

# Create a virtual environment if it doesn't existt
if [ ! -d "venv" ]; then
    python3 -m venv venv
fi

# Activate the virtual environment
source venv/bin/activate

# Install dependencies including Gunicorn
pip install -r requirements.txt
pip install gunicorn

# Verify installation
pip freeze > /home/ubuntu/deploy.log
