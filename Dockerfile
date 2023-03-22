FROM alpine:3.17

RUN apk update && apk add caddy ca-certificates  && caddy add-package github.com/mholt/caddy-webdav
RUN mkdir /wiki
COPY Caddyfile /Caddyfile
#WORKDIR /wiki
CMD ["caddy","run", "--config","/Caddyfile"]
