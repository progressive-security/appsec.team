FROM nginx:stable
COPY src/ /usr/share/nginx/html
VOLUME /etc/letsencrypt
CMD [ "sh", "-c", "nginx -g 'daemon off;'" ]
