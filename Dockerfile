FROM ruby:2.6.3-slim

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

RUN gem update --system
RUN gem install bundler -v 2.0.1

COPY ./Gemfile $APP_HOME
COPY ./Gemfile.lock $APP_HOME

RUN bundle install

COPY . $APP_HOME