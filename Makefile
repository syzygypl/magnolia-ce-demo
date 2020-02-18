start: compile up
stop: down clean
restart: stop start
compile:
	mvn clean install
up:
	docker-compose up -d --remove-orphans
down:
	docker-compose down --remove-orphans
clean:
	mvn clean
exec-public:
	docker-compose exec public bash
exec-author:
	docker-compose exec author bash
logs:
	docker-compose logs -f