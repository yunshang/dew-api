start:
	docker-compose up -d
stop:
	docker-compose down
restart:
	docker-compose restart
install:
	docker-compose run main bundle
	docker-compose run main bundle exec rails db:create
	docker-compose run main bundle exec rails db:migrate
console:
	docker-compose run main bundle exec rails bundle exec rails c
ssh:
	docker-compose run main /bin/sh
