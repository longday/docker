ARG VERSION

FROM nginx:${VERSION}
WORKDIR /etc/nginx

ENV \
    APP_DNS_RESOLVER=kube-dns.kube-system \
    APP_S3_PROXY_PORT=0

RUN rm nginx.conf
COPY ./tpls ./tpls
COPY ./startup.sh ./startup.sh

CMD ./startup.sh
