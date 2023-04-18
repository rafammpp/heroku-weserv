FROM ghcr.io/weserv/images:5.x
RUN ls 
RUN envsubst '$PORT' < /imagesweserv-no-cache.template > /etc/nginx/imagesweserv.conf