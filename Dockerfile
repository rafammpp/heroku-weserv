FROM ghcr.io/weserv/images:5.x

RUN envsubst '$PORT' < /imagesweserv-no-cache.template > /etc/nginx/imagesweserv.conf