# AGENTS.md

## Project

Dockette Hugo builds `dockette/hugo`, a Docker image for running the Hugo static site generator from `/srv`.

## Images

- Default image: `dockette/hugo:latest`.
- Build context: repository root `.` with `Dockerfile`.
- Base image: `dockette/alpine:3.11`.
- GitHub Actions builds `linux/amd64` for tests, then publishes `linux/amd64,linux/arm64` with one inline Build job (all tags at once) on `master` and the weekly schedule.

## Commands

- `make build` builds `${DOCKER_IMAGE}:${DOCKER_TAG}` from `.`.
- `make test` runs `hugo version` in the built image.
- `make run` serves a Hugo site from `${SITE_DIR:-$PWD}` on `localhost:1313`.

## Testing Notes

- Prefer `make test` after Dockerfile or Makefile changes.
- Use `make -n build test run` to dry-run command wiring without requiring Docker.
- The smoke test requires Docker and a locally built `${DOCKER_IMAGE}:${DOCKER_TAG}` image.

## Guidelines

- Keep `Dockerfile`, `Makefile`, README usage, and `.github/workflows/docker.yml` aligned.
- `VERSION` is the release date; `make release` bumps it. CI pushes `latest` also as `<VERSION>` and creates the GitHub release.
- Prefer `DOCKER_*` names for Docker-related Makefile variables.
- Place `.PHONY: <target>` directly above each Makefile target.
- Keep README badges and maintenance sections consistent with other Dockette image repos.
- Do not introduce unrelated formatting or structural changes.
