FROM ghcr.io/weserv/images:5.1.1
# copy images-weserv config to the container
COPY imagesweserv-no-cache.template /etc/nginx/imagesweserv.conf