DOCKER_IMAGE=dockette/hugo
DOCKER_TAG?=latest
DOCKER_PLATFORMS?=linux/amd64,linux/arm64
SITE_DIR?=${PWD}

.PHONY: build
build:
	docker buildx build --platform ${DOCKER_PLATFORMS} -t ${DOCKER_IMAGE}:${DOCKER_TAG} .

.PHONY: test
test:
	docker run --rm ${DOCKER_IMAGE}:${DOCKER_TAG} version

.PHONY: run
run:
	docker run --rm -it -p 1313:1313 -v "${SITE_DIR}:/srv" ${DOCKER_IMAGE}:${DOCKER_TAG} server --bind 0.0.0.0 --baseURL http://localhost:1313 -D
