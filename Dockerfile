FROM nginx
RUN git clone https://github.com/progressive-security/appsec.team.git
RUN ./appsec.team/src /usr/share/nginx/html
RUN ./appsec.team/site.conf /etc/nginx/conf.d/default.conf
EXPOSE 80:80
CMD ["nginx", "-g", "daemon off;"]
