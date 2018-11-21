build:
	docker build -t my/rails:latest .
start:
	docker-compose up -d
stop:
	docker-compose down
restart:
	docker-compose restart
install:
	docker-compose run app bundle exec rails assets:precompile
dev_server:
	docker-compose run app bundle exec rails s
