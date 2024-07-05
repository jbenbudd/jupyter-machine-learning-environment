# Use the official miniconda image as a base image
FROM continuumio/miniconda3

# Set the working directory
WORKDIR /app

# Copy the environment.yaml file into the container at /app
COPY environment.yaml /app/

# Create the conda environment from the environment.yaml file
RUN conda env create -f /app/environment.yaml

# Make sure the environment is activated
RUN echo "source activate machine_learning" > ~/.bashrc
ENV PATH /opt/conda/envs/machine_learning/bin:$PATH
ENV CONDA_DEFAULT_ENV machine_learning

# Set the working directory to /app
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Make port 8888 available to the world outside this container
EXPOSE 8888

# Run Jupyter Notebook when the container launches
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]