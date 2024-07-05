# Machine Learning Jupyter Notebook Environment Setup
This repository provides an opinionated Dockerfile and conda environment YAML for machine learning with Jupyter notebooks.  
  
The Docker container runs a Jupyter server from a conda environment that you can configure declaratively with the provided YAML.  
  
You can connect this Jupyter server to Visual Studio Code to develop your notebooks. The environment.yaml specifies all conda and pip packages to include.
## Prerequisites
- Docker (running)
- Visual Studio Code with Jupyter extension 
## Setup
### Build the container
>> docker build -t my-jupyter .
### Run the container
>> docker run -p 8888:8888 my-jupyter
### Connect Jupyter Server to VSCode
Open your Jupyter notebook. Click on `Select Kernel`. Select `Existing Jupyter Server`. Enter `http://127.0.0.1:8888/tree` into the Remote URL field. Select `Yes`.
## Helpful Hints
### How to attach to running container (if needed)
>> docker exec -it <container_id_or_name> /bin/sh