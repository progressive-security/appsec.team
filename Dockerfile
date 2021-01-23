FROM nginx:mainline-alpine
CMD apk update && apk upgrade && apk add --no-cache bash git openssh && git clone https://github.com/progressive-security/appsec.team.git
CMD cp ./appsec.team/src/ /usr/share/nginx/html && cp ./appsec.team/site.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
