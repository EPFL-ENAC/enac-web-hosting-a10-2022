UID := $(shell id -u)
GID := $(shell id -g)

run:
	docker compose up --build -d

down:
	docker compose down

generate-selfsigned-cert:
	cd cert && OWNER="${UID}.${GID}" docker compose up --remove-orphans
