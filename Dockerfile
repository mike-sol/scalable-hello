FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
RUN /bin/bash -c 'if [ "$RAILS_ENV" == "production" ]; then export RAILS_DATABASE_PASSWORD=$(cat /run/secrets/rails_database_password); fi'

