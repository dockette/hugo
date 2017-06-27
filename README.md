# Hugo

[![Docker Stars](https://img.shields.io/docker/stars/dockette/hugo.svg?style=flat)](https://hub.docker.com/r/dockette/hugo/)
[![Docker Pulls](https://img.shields.io/docker/pulls/dockette/hugo.svg?style=flat)](https://hub.docker.com/r/dockette/hugo/)

Take a look at [official documentation](https://gohugo.io/overview/introduction/).

### Hugo

Show help:

```
docker run -it --rm dockette/hugo help new
```

Start embedded server: 

```
docker run -it --rm -v $(pwd):/srv dockette/hugo server -D -v
```

Build site:

```
docker run -it --rm -v $(pwd):/srv dockette/hugo
```
