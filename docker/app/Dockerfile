FROM my/rails:latest
# RUN apk --update add build-essential libpq-dev nodejs 
# Set an environment variable where the Rails app is installed to inside of Docker image
ENV RAILS_ROOT /var/www/app_name
RUN mkdir -p $RAILS_ROOT 
# Set working directory
WORKDIR $RAILS_ROOT
# Setting env up
ENV RAILS_ENV='production'
ENV RACK_ENV='production' 
ENV DATABSE_URL=postgres://postgres:@postgres:5432/docker-rails_prd
ENV DATABSE_HOST=db
ENV DATABASE_NAME=docker-rails_prd
ENV RAILS_SERVE_STATIC_FILES=true

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install --jobs 20 --retry 5 --without development test 
# Adding project files
COPY . .
EXPOSE 3000
CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]