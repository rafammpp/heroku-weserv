FROM ghcr.io/weserv/images:5.x
# copy images-weserv config to the container
COPY imagesweserv-no-cache.template imagesweserv-no-cache.template
RUN envsubst '$PORT' < imagesweserv-no-cache.template > /etc/nginx/imagesweserv.conf