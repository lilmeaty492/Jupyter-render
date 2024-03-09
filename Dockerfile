# Use the specified Ubuntu 20.04 image as base
FROM jupyter/base-notebook as base

# Update and install required packages
RUN apt-get update && apt-get install -y \
    sudo

# Set the working directory

# Install JupyterLab
RUN pip install pandas matplotlib

# Expose all ports
EXPOSE 0-65535

# Start JupyterLab on port 8080 without authentication and allow root access
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--allow-root", "--NotebookApp.token=''"]
