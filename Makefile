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
cap:
    # docker-compose run main cap production deploy
precompile:
	docker-compose -f docker-compose-production.yml run app bundle exec rails assets:precompile
pro_ssh:
	docker-compose -f docker-compose-production.yml run app /bin/sh
pro_migrate:
	docker-compose -f docker-compose-production.yml run app bundle exec rails db:migrate RAILS_ENV=production
pro_start:
	docker-compose -f docker-compose-production.yml up -d
pro_stop:
	docker-compose -f docker-compose-production.yml down
pro_restart:
	docker-compose -f docker-compose-production.yml restart
