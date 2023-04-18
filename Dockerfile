FROM ghcr.io/weserv/images:5.x
# copy images-weserv config to the container
COPY imagesweserv-no-cache.template /etc/nginx/conf.template