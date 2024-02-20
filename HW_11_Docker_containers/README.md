# Build image
docker build -t nginx-ubuntu .

# Run Docker container
docker run -d --name nginx-ubuntu_cont1 -p 8080:80 -i -t nginx-ubuntu

# Check status container
docker ps
docker container ls

# Commit(tag) and push image to DockerHub
docker tag 9ffdb07ab129 alinasmirnova0303/nginx-ubuntu
docker push alinasmirnova0303/nginx-ubuntu

# DockerHub
https://hub.docker.com/repository/docker/alinasmirnova0303/nginx-ubuntu/general