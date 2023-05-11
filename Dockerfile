# Use russtedrake/underactuated:8a9250e3 as a parent image
FROM russtedrake/underactuated:8a9250e3

# Set the working directory in the container to /home
WORKDIR /home

# Upgrade jupyter core
RUN pip install --upgrade jupyter-core

# Install JupyterLab
RUN pip install --no-cache-dir jupyterlab

# Install vim bindings for Jupyterlab
RUN pip install jupyterlab-vim

# 6999 for jupyter lab, 7000 for meshcat
EXPOSE 6999
EXPOSE 7000

# Run jupyterlab when the container launches
CMD ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root", "--NotebookApp.token=''", "--no-browser", "--port=6999"]
