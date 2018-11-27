FROM ruby:2.3-alpine

WORKDIR /app

RUN apk --update add ca-certificates nodejs tzdata nginx libcurl vim && \
    apk --update add --virtual .builddeps build-base ruby-dev libc-dev linux-headers mysql-dev postgresql-dev libxml2-dev libxslt-dev git &&\
    addgroup -g 1000 -S app && adduser -u 1000 -S app -G app &&\
    bundle config mirror.https://rubygems.org https://gems.ruby-china.com

# COPY . /app
RUN gem install bundler
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app
