#!/bin/bash

# build site
hugo

# run docker container
docker run -d -p 80:80 -p 443:443 \
	-v /home/jam/src/blog/Caddyfile.local:/etc/caddy/Caddyfile \
	-v caddy_data:/data \
	-v caddy_config:/config \
	-v $PWD/public:/var/www/html \
	caddy

