IMAGE_TAG=thenets/tools

build:
	docker build -q -t $(IMAGE_TAG) .

run:
	docker run -it --rm \
		$(PARAMS) \
		$(IMAGE_TAG)

build-run: build run
