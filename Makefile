UID := $(shell id -u)
GID := $(shell id -g)

run:
	docker-compose \
		-f docker-compose.yml \
		-f docker-compose-enacrepo.yml \
		up --build -d

down:
	docker-compose \
		-f docker-compose.yml \
		-f docker-compose-enacrepo.yml \
	  down

generate-selfsigned-cert:
	cd cert && OWNER="${UID}.${GID}" docker-compose up --remove-orphans
