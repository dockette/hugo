# Hugo

<p align=center>
   <a href="https://github.com/dockette/hugo/actions"><img src="https://github.com/dockette/hugo/actions/workflows/docker.yml/badge.svg" alt="GitHub Actions"></a>
   <a href="https://hub.docker.com/r/dockette/hugo"><img src="https://img.shields.io/docker/pulls/dockette/hugo.svg" alt="Docker Hub pulls"></a>
   <a href="https://github.com/sponsors/f3l1x"><img src="https://img.shields.io/badge/sponsor-GitHub%20Sponsors-ea4aaa" alt="GitHub Sponsors"></a>
   <a href="https://github.com/orgs/dockette/discussions"><img src="https://img.shields.io/badge/support-discussions-6f42c1" alt="Support/Discussions"></a>
</p>

The [Hugo](https://gohugo.io) static site generator. Take a look at the
[official documentation](https://gohugo.io/overview/introduction/).

## Features

- Hugo from the Alpine package on `dockette/alpine:3.11`
- Entrypoint is `hugo`, the working directory is `/srv`
- `linux/amd64` and `linux/arm64`

## Usage

```sh
# Show help
docker run -it --rm dockette/hugo help new

# Start the embedded server
docker run -it --rm -p 1313:1313 -v $(pwd):/srv dockette/hugo server --bind 0.0.0.0 --baseURL http://localhost:1313 -D -v

# Build the site
docker run -it --rm -v $(pwd):/srv dockette/hugo
```

## Versions

| Version | Release |
|---------|---------|
| `dockette/hugo:YYYY.MM.DD` | release `YYYY.MM.DD` |
| `dockette/hugo:latest` | latest build of `master` |

Releases are listed on [GitHub](https://github.com/dockette/hugo/releases).

## Development

```sh
make build          # build the image
make test           # run hugo version in the image
make run            # serve the site in SITE_DIR (default is the current directory) on port 1313
make version        # print VERSION
make release        # set today's date in VERSION
```

## Maintenance

See [how to contribute](https://github.com/dockette/.github/blob/master/CONTRIBUTING.md) to this package. Consider to
[support](https://github.com/sponsors/f3l1x) **f3l1x**. Thank you for using this package.
