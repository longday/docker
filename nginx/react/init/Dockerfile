FROM bash:5.0.18
RUN apk add gettext --no-cache
WORKDIR /app
COPY ./startup.sh ./
COPY ./nginx.conf ./nginx.tpl
CMD ./startup.sh
