UID := $(shell id -u)
GID := $(shell id -g)

run:
	docker compose \
		-f docker-compose*.yml \
		-f docker-compose-enacit-dokuwiki.yml \
		-f docker-compose-enacitarchives.yml \
		-f docker-compose-enacrepo.yml \
		-f docker-compose-enacsoft.yml \
		-f docker-compose-metalp.yml \
		up --build -d

down:
	docker compose \
		-f docker-compose.yml \
		-f docker-compose-enacit-dokuwiki.yml \
		-f docker-compose-enacitarchives.yml \
		-f docker-compose-enacrepo.yml \
		-f docker-compose-enacsoft.yml \
		-f docker-compose-metalp.yml \
	  down

generate-selfsigned-cert:
	cd cert && OWNER="${UID}.${GID}" docker-compose up --remove-orphans
