FROM caddy:latest

# copy configuration and site files into container
COPY Caddyfile /etc/caddy/Caddyfile
COPY public /var/www/html

