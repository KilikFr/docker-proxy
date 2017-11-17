FROM debian:jessie

MAINTAINER Michel NAUD <mitch@kilik.fr>

RUN apt-get update && apt-get install -y \
    nginx

ADD nginx.conf /etc/nginx/

#RUN echo "upstream php-upstream { server php:9000; }" > /etc/nginx/conf.d/upstream.conf

CMD ["nginx"]

VOLUME /etc/nginx/sites-enabled

EXPOSE 80
EXPOSE 443
