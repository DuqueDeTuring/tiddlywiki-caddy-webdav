# Minimal container for running a TiddlyWiki

I love the speed and useful simplicity of [TiddlyWiki](https://tiddlywiki.com/). This is a very simple container for running a TiddlyWiki in [Caddy](https://caddyserver.com/) with WebDAV support for saving changes.

First you need a wiki, if you don´t have one and you are starting from scratch or you just want to test this you should go to [the official website](https://tiddlywiki.com/), download the empty Wiki file and use it as the mapped file when running the container.

(**If you use docker just type docker instead of podman**)

## If you don't want to build the image

You can use one of the already available images:

```
podman container run --rm -p 8080:80 -v ~/Downloads/empty.html:/wikis/wiki.html --name miswikis public.ecr.aws/n8v1i4k9/tiddlywiki:latest
```

Or:

```
podman container run --rm -p 8080:80 -v ~/Downloads/empty.html:/wikis/wiki.html --name miswikis duquedeturing/tiddlywiki:latest
```

## If you want to build your own image:

The WebDAV support in Caddy comes as a plugin: [Caddy-WebDAV](github.com/mholt/caddy-webdav).

With podman or docker installed it takes just 2 steps:

1. Build the image from this repo directory
```
podman image build -t mywikis .
```

2. Run the container
```
podman container run --rm -p 8080:80 -v YOUR_PATH_TO_YOUR_TIDDLYWIKI_FILE/empty.html:/wikis/wiki.html --name mywikis mywikis
```

If you are running the container in your local machine then you can access your wiki at: http://localhost:8080/wiki.html

-------
"This project is licensed under the terms of the MIT license."

---------------------

# Contenedor mínimo para tener TiddlyWiki

Adoro la velocidad y lo útil que es [TiddlyWiki](https://tiddlywiki.com/). Este es un contenedor muy simple para ejecutar TiddlyWiki con el soporte de WebDav para guardar cambios provisto por [Caddy](https://caddyserver.com/).

Primero necesitas una wiki, si no tienes una y estás iniciando desde cero o sólo quieres probar esto debes ir al [sitio oficial](https://tiddlywiki.com/), descargar el archivo "emtpy wiki" y usarlo como el archivo definido en el volumen (ver el _mapping_ utilizado al hacer el _container run_).

## Si no quieres construir la imagen:

Puedes utilizar la disponible en los registros públicos de contenedores:

```
podman container run --rm -p 8080:80 -v ~/Downloads/empty\(1\).html:/wikis/wiki.html --name miswikis public.ecr.aws/n8v1i4k9/tiddlywiki:latest
```

O:

```
podman container run --rm -p 8080:80 -v ~/Downloads/empty\(1\).html:/wikis/wiki.html --name miswikis duquedeturing/tiddlywiki:latest
```

## Si quieres construr tu propia imagen:
Para el soporte de WebDAV se instala en Caddy el plugin [Caddy-WebDAV](github.com/mholt/caddy-webdav).

Con podman o docker instalados sólo se requieren 2 pasos:

1. Construir la imagen de este repositorio
```
podman image build -t miswikis .
```

2. Ejecutar el contenedor 
```
podman container run --rm -p 8080:80 -v YOUR_PATH_TO_YOUR_TIDDLYWIKI_FILE/empty.html:/wiki/wiki.html --name miswikis miswikis
```

Si está usando el contenedor local en su máquina entonces puede accesar su wiki en: http://localhost:8080/wiki.html

-------
"This project is licensed under the terms of the MIT license."
