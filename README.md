Install docker-proxy
====================

```sh
cd ~/docker
git clone https://github.com/KilikFr/docker-proxy.git
```

Setup your websites routes in ./sites-enabled

(see ./sites-enabled.dist/mywebsite.conf)

```sh
docker-compose build
docker-compose up -d
```

