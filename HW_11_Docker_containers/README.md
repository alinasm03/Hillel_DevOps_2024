# Build image

docker build -t nginx-ubuntu .

# Run Docker container

docker run -d --name nginx-ubuntu_cont1 -p 8080:80 -i -t nginx-ubuntu

# Check status container

1. docker ps

2. docker container ls

# Commit(tag) and push image to DockerHub

1. docker tag nginx-ubuntu alinasmirnova0303/nginx-ubuntu

2. docker push alinasmirnova0303/nginx-ubuntu

# DockerHub

https://hub.docker.com/repository/docker/alinasmirnova0303/nginx-ubuntu/general