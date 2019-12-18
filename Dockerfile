FROM ruby:2.5.1-slim

# RUN apt-get update
# RUN apt-get install -y --force-yes build-essential wget git
# RUN apt-get install -y --force-yes zlib1g-dev libssl-dev libreadline-dev libyaml-dev libxml2-dev libxslt-dev git

# RUN apt-get clean

# RUN gem update --system
RUN gem install bundler

ENV APP_HOME /usr/src/app
RUN mkdir -p $APP_HOME
WORKDIR $APP_HOME

COPY . $APP_HOME