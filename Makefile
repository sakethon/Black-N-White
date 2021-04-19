setup:
	docker build -t "nginx:latest" -f ./docker/nginx/Dockerfile .
	docker build -t "node:latest" -f ./docker/node/Dockerfile .
