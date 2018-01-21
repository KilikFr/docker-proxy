Install a Nginx reverse Proxy
=============================

This docker pod run a nginx reverse proxy, and use VIRTUAL_HOST in docker-compose of your projects to route the http trafic.

With LETSENCRYPT_HOST and LETSENCRYPT_EMAIL setup it try to generate and renew certificates with Letsencrypt.

```sh
cd ~/docker
git clone git@github.com:KilikFr/docker-proxy.git
cd docker-proxy
cp .env.dist .env
```

Update your .env setup.
```sh
nano .env
```

Start the proxy
```sh
make start
```

Stop the proxy
```sh
make stop
```

You need to setup VIRTUAL_HOST in your docker projects:

An example project (docker-compose.yml):
```yaml
version '2'
services:
    nginx:
        build: docker/nginx
        ports:
            - ${HTTP_PORT}
        links:
            - php
        volumes_from:
            - php
        environment:
             VIRTUAL_HOST: ${VIRTUAL_HOST}
             LETSENCRYPT_HOST: ${LETSENCRYPT_HOST}
             LETSENCRYPT_EMAIL: ${LETSENCRYPT_EMAIL}

networks:
    default:
        external:
            name: ${PROXY_NETWORK}

```

