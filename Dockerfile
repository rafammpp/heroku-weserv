FROM ghcr.io/weserv/images:5.x
RUN ls /
RUN ls /home
RUN ls /dev 
RUN ls /tmp
RUN ls /root
RUN ls 
RUN envsubst '$PORT' < /imagesweserv-no-cache.template > /etc/nginx/imagesweserv.conf