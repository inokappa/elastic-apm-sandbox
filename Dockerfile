FROM ruby:2.7.2

RUN apt-get update -qq && apt-get -y install \
    build-essential \
    libpq-dev \
    nodejs

RUN mkdir /app

COPY Gemfile /app

WORKDIR /app

RUN gem install bundler && bundle install
