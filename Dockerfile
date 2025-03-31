FROM ghcr.io/weserv/images:sha-dc6cc09
# copy images-weserv config to the container
COPY imagesweserv-no-cache.template /etc/nginx/imagesweserv.conf