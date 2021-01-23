FROM nginx
COPY ./src/ /usr/share/nginx/html
COPY ./site.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
