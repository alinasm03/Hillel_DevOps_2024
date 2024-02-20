FROM alpine:3.19.1
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y nginx curl \
    && rm -rf /var/lib/apt/lists/*
CMD [ "nginx", "-g", "daemon off;" ]
VOLUME [ "/var/log/nginx"]
WORKDIR /etc/nginx
