ALPINE_VERSION=3.4
BASE_IMAGE=gliderlabs/alpine:$(ALPINE_VERSION)
DOCKER_IMAGE=quay.io/gigafm/base
DOCKER_TAG=alpine-$(ALPINE_VERSION)

build:
	rocker build \
		--pull \
		--var AlpineVersion=${ALPINE_VERSION} \
		--var BaseImage=${BASE_IMAGE} \
		--var DockerImage=${DOCKER_IMAGE} \
		--var DockerTag=${DOCKER_TAG}

push: build
	docker push $(DOCKER_IMAGE):$(DOCKER_TAG)
