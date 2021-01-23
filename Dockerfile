FROM alpine
WORKDIR /tmp
RUN apk update && apk upgrade && apk add --no-cache bash git openssh
RUN git clone https://github.com/progressive-security/appsec.team.git

FROM nginx
COPY --from=0 /tmp/appsec.team/src /usr/share/nginx/html
COPY --from=0 /tmp/appsec.team/site.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
