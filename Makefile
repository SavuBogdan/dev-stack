export UID=1000
export GID=1000

install: down build up

build:
	@docker-compose build --pull
up:
	@docker-compose up -d --remove-orphans

down:
	@docker-compose down --remove-orphans

clean: down
	docker system prune -f
	docker volume prune -f
	docker network prune -f