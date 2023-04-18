FROM ghcr.io/weserv/images:5.x
RUN ls /home
RUN ls /dev 
RUN ls /tmp
RUN envsubst '$PORT' < /imagesweserv-no-cache.template > /etc/nginx/imagesweserv.conf