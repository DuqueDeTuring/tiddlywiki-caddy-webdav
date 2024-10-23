FROM alpine:3.20.3

RUN apk update && apk add caddy ca-certificates  && caddy add-package github.com/mholt/caddy-webdav
RUN mkdir /wikis
COPY Caddyfile /Caddyfile
CMD ["caddy","run", "--config","/Caddyfile"]
