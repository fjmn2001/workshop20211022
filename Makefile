.PHONY: start
start:
	@docker-compose up -d --build

.PHONY: stop
stop:
	@docker-compose stop

.PHONY: login-php
login-php:
	@docker-compose -f docker-compose.yaml exec workshop20211022-php sh

.PHONY: test
test:
	@docker exec workshop20211022-php ./vendor/bin/behat --format=progress -v

.PHONY: deps
deps:
	@docker exec workshop20211022-php composer require --dev behat/behat
	@docker exec workshop20211022-php composer require --dev phpunit/phpunit