# #AppSecTeam
Static content for https://appsec.team/ web-site.

## What do we talk about?
These pages will tell you about modern application security practices. Go to the web-site https://appsec.team/ to start studying.

## How to deploy
* docker pull certbot/certbot
* docker run -it --rm -p 80:80 --name certbot -v "/etc/letsencrypt:/etc/letsencrypt" -v "/var/lib/letsencrypt:/var/lib/letsencrypt" certbot/certbot certonly -d appsec.team -d www.appsec.team --non-interactive --agree-tos -m info@appsec.team --standalone
* docker-compose up
