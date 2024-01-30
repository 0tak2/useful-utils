FROM nginx:stable-bullseye

ARG ADDITIONAL_HOST=0.0.0.0

# make self cert
RUN apt update
RUN apt install libnss3-tools -y
COPY  mkcert-v1.4.4-linux-amd64 /mkcert
RUN chmod +x mkcert
RUN /mkcert -key-file key.pem -cert-file cert.pem localhost 127.0.0.1 ::1 192.168.0.1 $ADDITIONAL_HOST

COPY config/https.conf /etc/nginx/conf.d/https.conf

# nginx
# see: https://github.com/nginxinc/docker-nginx/blob/master/Dockerfile-debian.template
ENTRYPOINT ["/docker-entrypoint.sh"]
EXPOSE 80
EXPOSE 443
CMD ["nginx", "-g", "daemon off;"]
