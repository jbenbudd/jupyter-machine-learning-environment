# How to build the container
First, navigate to the folder containing the Dockerfile. Then, run:
>> docker build -t <container_name> .
# How to run the container
>> docker run -p 8888:8888 my-jupyter
# How to attach to running container to make changes
>> docker exec -it <container_id_or_name> /bin/sh