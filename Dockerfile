FROM nginx:stable
COPY src/ /usr/share/nginx/html
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/appsec.team.conf
