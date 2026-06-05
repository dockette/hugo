# Hugo

<p align=center>
   <a href="https://github.com/dockette/hugo/actions"><img src="https://github.com/dockette/hugo/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/hugo"><img src="https://img.shields.io/docker/pulls/dockette/hugo.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

Take a look at [official documentation](https://gohugo.io/overview/introduction/).

## Usage

Show help:

```
docker run -it --rm dockette/hugo help new
```

Start embedded server:

```
docker run -it --rm -p 1313:1313 -v $(pwd):/srv dockette/hugo server --bind 0.0.0.0 --baseURL http://localhost:1313 -D -v
```

Build site:

```
docker run -it --rm -v $(pwd):/srv dockette/hugo
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to [support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
