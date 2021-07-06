ARG VERSION

FROM nginx:${VERSION}-alpine
# inotify events not working
#RUN apk add --no-cache inotify-tools
WORKDIR /etc/nginx
RUN mkdir -p /etc/nginx/server.d

COPY cert.key cert.pem nginx.conf start.sh ./
CMD ./start.sh
