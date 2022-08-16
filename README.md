# Minimal container for running a TiddlyWiki

I love the speed and useful simplicity of [TiddlyWiki](https://tiddlywiki.com/). This is a very simple container for running a TiddlyWiki in [Caddy](https://caddyserver.com/) with WebDAV support for saving changes.

The WebDAV support in Caddy comes as a plugin: [Caddy-WebDAV](github.com/mholt/caddy-webdav).

This repo includes an empty wiki (directly from the project TiddlyWiki), you should go to [the official website](https://tiddlywiki.com/), download the empty Wiki file and use it as the mapped file when running the container.

Having podman or docker installed it takes just 2 steps:

1. Build the image from this repo directory
```
podman image build -t mywiki .
```

2. Run container
```
podman container run --rm -p 8080:8080 -v YOUR_PATH_TO_YOUR_TIDDLYWIKI_FILE/empty.html:/wiki/wiki.html --name mywiki mywiki
```


If you are running the container in your local machine then you can access your wiki at: http://localhost:8080/wiki.html

-------
"This project is licensed under the terms of the MIT license."
