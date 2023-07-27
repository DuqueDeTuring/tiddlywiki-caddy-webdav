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
podman container run --rm -p 8080:80 -v YOUR_PATH_TO_YOUR_TIDDLYWIKI_FILE/empty.html:/wiki/wiki.html --name mywiki mywiki
```


If you are running the container in your local machine then you can access your wiki at: http://localhost:8080/wiki.html

-------
"This project is licensed under the terms of the MIT license."

---------------------

# Contenedor mínimo para tener TiddlyWiki

Adoro la velocidad y lo útil que es [TiddlyWiki](https://tiddlywiki.com/). Este es un contenedor muy simple para ejecutar TiddlyWiki con el soporte de WebDav para guardar cambios provisto por [Caddy](https://caddyserver.com/).

Para el soporte de WebDAV se instala en Caddy el plugin [Caddy-WebDAV](github.com/mholt/caddy-webdav).

Este repositorio incluye una wiki vacía (directamente del proyecto TiddlyWiki), debería ir al [sitio oficial](https://tiddlywiki.com/), descargar el archivo "emtpy wiki" y usarlo como el archivo definido en el volumen (ver el _mapping_ utilizado al hacer el _container run_).

Con podman o docker instalados sólo se requieren 2 pasos:

1. Construir la imagen de este repositorio
```
podman image build -t mywiki .
```

2. Ejecutar el contenedor 
```
podman container run --rm -p 8080:80 -v YOUR_PATH_TO_YOUR_TIDDLYWIKI_FILE/empty.html:/wiki/wiki.html --name mywiki mywiki
```

Si está usando el contenedor local en su máquina entonces puede accesar su wiki en: http://localhost:8080/wiki.html

-------
"This project is licensed under the terms of the MIT license."
