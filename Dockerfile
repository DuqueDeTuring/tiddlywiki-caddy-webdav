FROM alpine@sha256:28bd5fe8b56d1bd048e5babf5b10710ebe0bae67db86916198a6eec434943f8b


RUN apk update && apk add caddy ca-certificates  && caddy add-package github.com/mholt/caddy-webdav
RUN mkdir /wikis
COPY Caddyfile /Caddyfile
CMD ["caddy","run", "--config","/Caddyfile"]
