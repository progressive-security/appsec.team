FROM nginx
COPY src/ /usr/share/nginx/html
COPY site.conf /etc/nginx/conf.d/appsec.team.conf
CMD ["nginx", "-g", "daemon off;"]
