#!/bin/bash

# Navigate to the project directory
cd /home/ubuntu/LP

# Activate the virtual environment
source venv/bin/activate

# Start Gunicorn and restart Nginx
sudo systemctl daemon-reload
sudo systemctl start gunicorn
sudo systemctl restart nginx
