# certbot
## manual 手動
docker run \
    --interactive \
    --tty \
    --rm \
    --name certbot \
    --volume "${PWD}/letsencrypt/work:/var/lib/letsencrypt" \
    --volume "${PWD}/letsencrypt/logs:/var/log/letsencrypt" \
    --volume "${PWD}/letsencrypt/config:/etc/letsencrypt" \
    docker.io/certbot/certbot:latest \
    certonly \
    --manual \
    --preferred-challenges http \
    --agree-tos \
    --email newjett0617@gmail.com \
    --domain test.jettlin.com \
    --dry-run


    --manual-public-ip-logging-ok \
