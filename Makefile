setup:
	docker volume create nodemodules
install:
	npm install && docker-compose -f docker-compose.builder.yml run --rm install && npm install
dev:
	docker-compose up
kill:
	docker-compose down
bash:
	docker-compose exec dev sh