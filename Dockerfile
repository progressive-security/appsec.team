FROM alpine
RUN mkdir /appsec
RUN cd /appsec
RUN apk update && apk upgrade && apk add --no-cache bash git openssh
CMD ["git", "clone https://github.com/progressive-security/appsec.team.git"]

FROM nginx
COPY --from=0 /appsec/appsec.team/src /usr/share/nginx/html
COPY --from=0 /appsec/appsec.team/site.conf /etc/nginx/conf.d/default.conf
CMD ["nginx", "-g", "daemon off;"]
