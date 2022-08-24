UID := $(shell id -u)
GID := $(shell id -g)

run:
	docker-compose up --build -d

generate-selfsigned-cert:
	cd cert && OWNER="${UID}.${GID}" docker-compose up --remove-orphans
