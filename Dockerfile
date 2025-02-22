FROM        nginx:stable-alpine3.20-perl
RUN         rm -rf /usr/share/nginx/html/*
COPY        ./ /usr/share/nginx/html/.
COPY        nginx-default.conf /etc/nginx/conf.d/default.conf
COPY        nginx.conf /etc/nginx/nginx.conf
RUN         chown nginx:nginx -R /var/cache/nginx /run
USER        nginx