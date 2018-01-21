default:
	@echo "make start|stop|restart"

start:
	./start.sh

stop:
	docker-compose stop

restart:
	docker-compose stop
	./start.sh
