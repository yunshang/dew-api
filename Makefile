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
server:
	docker-compose run main bundle exec rails s
