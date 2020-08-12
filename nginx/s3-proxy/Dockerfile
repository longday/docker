FROM nginx:1.19-alpine
WORKDIR /etc/nginx
COPY ./nginx.conf ./nginx.tmpl

EXPOSE 80
CMD envsubst '$S3_ENDPOINT,$LOCATION_PREFIX,$DNS_SERVER' < nginx.tmpl > nginx.conf && nginx -g "daemon off;"
