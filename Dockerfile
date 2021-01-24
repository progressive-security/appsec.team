FROM nginx:stable
ARG CERTBOT_EMAIL=artem@merets.ru
ARG DOMAIN_LIST
COPY src/ /usr/share/nginx/html
COPY nginx/conf.d/default.conf /etc/nginx/conf.d/appsec.team.conf
RUN  apt-get update \
      && apt-get install -y cron bash wget \
      && wget -O /usr/local/bin/certbot-auto https://dl.eff.org/certbot-auto \
      && chown root /usr/local/bin/certbot-auto \
      && chmod 0755 /usr/local/bin/certbot-auto \
      && certbot-auto certonly --standalone --agree-tos -m "${CERTBOT_EMAIL}" -n -d ${DOMAIN_LIST} \
      && rm -rf /var/lib/apt/lists/* \
      && echo "@monthly /usr/local/bin/certbot-auto renew --nginx >> /var/log/cron.log 2>&1" >/etc/cron.d/certbot-renew \
      && crontab /etc/cron.d/certbot-renew
VOLUME /etc/letsencrypt
CMD [ "sh", "-c", "cron && nginx -g 'daemon off;'" ]
