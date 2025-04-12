IMAGE_NAME=astro-docker-app
PORT=3000

build:
	docker build -t $(IMAGE_NAME) .

run:
	docker run -p $(PORT):$(PORT) $(IMAGE_NAME)

up: build run

clean:
	docker rmi -f $(IMAGE_NAME)

logs:
	docker logs $$(docker ps -q --filter ancestor=$(IMAGE_NAME))