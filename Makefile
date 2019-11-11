.PHONY: push run bash

TAG=crizcraig/forward-agent
DOCKER_OPTS=--net=host --runtime=nvidia
RUN=docker run -it $(DOCKER_OPTS) $(TAG)

build:
	docker build -t $(TAG) .

run:
	$(RUN)

bash:
	$(RUN) bash

push:
	docker push $(TAG)