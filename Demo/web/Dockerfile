FROM nginx:latest

LABEL group="2TL2-1"

COPY nginx.conf /etc/nginx/nginx.conf
COPY index.html /usr/share/nginx/html/index.html
COPY health-check.conf /etc/nginx/conf.d/health-check.conf

EXPOSE 80
