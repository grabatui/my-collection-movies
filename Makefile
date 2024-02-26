init: down-clear pull build up project-init
restart: down up

project-init: p-composer-install

up:
	docker-compose up -d

down:
	docker-compose down --remove-orphans

test:
	docker-compose exec php php bin/phpunit

down-clear:
	docker-compose down -v --remove-orphans

pull:
	docker-compose pull

build:
	docker-compose build

p-composer-install:
	docker-compose exec php composer install

phpstan:
	docker-compose exec php ./vendor/bin/phpstan analyse src

cs-fixer:
	docker-compose exec php ./vendor/bin/php-cs-fixer fix
