FROM caddy:latest

# copy configuration and site files into container
COPY Caddyfile.local /etc/caddy/Caddyfile
COPY public /var/www/html

EXPOSE 80
EXPOSE 443

