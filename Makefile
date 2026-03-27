
COMPOSE = docker compose
PHP_UNIT = bin/phpunit
COMPOSER = composer
PHP_CS = php vendor/bin/php-cs-fixer
PHPSTAN = php vendor/bin/phpstan
ARGS =
CONTAINER_RUN=docker exec -it app bash -c

.PHONY: up down build rebuild start clear reload refresh test coverage


up:
	$(COMPOSE) up -d

down:
	$(COMPOSE) down

build:
	$(COMPOSE) build

rebuild:
	$(COMPOSE) build --no-cache

start: build up

clear:
	$(COMPOSE) down -v --rmi all
	docker system prune -f

reload: down start

refresh: clear rebuild start

test:
	$(CONTAINER_RUN) "$(PHP_UNIT) --testdox $(ARGS)"

tc:
	$(CONTAINER_RUN) "rm -rf coverage"
	$(CONTAINER_RUN) "XDEBUG_MODE=coverage $(PHP_UNIT) --coverage-html coverage --testdox --display-all-issues $(ARGS)"

fix-check:
	$(PHP_CS) fix --dry-run

fix:
	$(PHP_CS) fix

phpstan:
	$(PHPSTAN) analyse src/ --memory-limit 1G

security-check:
	$(COMPOSER) audit
