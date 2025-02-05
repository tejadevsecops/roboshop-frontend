FROM            redhat/ubi9
RUN             dnf install nginx sudo -y
RUN             rm -rf /usr/share/nginx/html/*
COPY            ./ /usr/share/nginx/html/.
COPY            nginx.conf /etc/nginx/nginx.conf