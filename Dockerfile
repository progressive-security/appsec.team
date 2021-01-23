FROM nginx
COPY src/ /usr/share/nginx/html
COPY site.conf /etc/nginx/sites-available/appsec.team.conf
CMD ["nginx", "-g", "daemon off;"]
