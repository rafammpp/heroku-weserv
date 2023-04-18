FROM ghcr.io/weserv/images:5.x
ARG port
ENV PORT=$port
# print port with a message
RUN echo "PORT is $PORT"
RUN ls /
RUN envsubst '$PORT' < /imagesweserv-no-cache.template > /etc/nginx/imagesweserv.conf