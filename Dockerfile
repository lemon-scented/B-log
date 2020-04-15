FROM caddy:latest

RUN apk add --no-cache git hugo

RUN git clone https://github.com/lemonase/blog.git
RUN git clone https://github.com/lemonase/blog-extra.git

# build hugo site with destination for caddy
RUN hugo 

COPY /blog/Caddyfile /etc/caddy/Caddyfile
COPY /blog/public /site

EXPOSE 80 443

