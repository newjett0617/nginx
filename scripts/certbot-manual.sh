#!/usr/bin/env sh

## TODO: use CA auth SSL
docker run \
    --interactive \
    --tty \
    --rm \
    --name certbot \
    docker.io/certbot/certbot:latest \
    certonly \
    --manual \
    --preferred-challenges http \
    --agree-tos \
    --no-eff-email \
    --email newjett0617@gmail.com \
    --domains test.jettlin.com  \
    --dry-run
#    --volume "${PWD}/letsencrypt/work:/var/lib/letsencrypt" \
#    --volume "${PWD}/letsencrypt/logs:/var/log/letsencrypt" \
#    --volume "${PWD}/letsencrypt/config:/etc/letsencrypt" \
