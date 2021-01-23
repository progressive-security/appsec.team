FROM nginx:alpine
RUN apk add certbot certbot-nginx
RUN mkdir /etc/letsencrypt
COPY default.conf /etc/nginx/conf.d/default.conf
