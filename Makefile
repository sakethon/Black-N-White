setup:
	docker build -t "nginx:latest" -f ./docker/nginx/Dockerfile .
	docker build -t "node:latest" -f ./docker/node/Dockerfile .

init:
	docker run -it -v $(CURDIR)/src:/src node npm init

install:
	docker run -it -v $(CURDIR)/src:/src --network=host node npm install
