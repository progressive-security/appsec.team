FROM nginx:stable
COPY src/ /usr/share/nginx/html
VOLUME /etc/letsencrypt
CMD [ "sh", "-c", "cron && nginx -g 'daemon off;'" ]
