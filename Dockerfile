FROM ruby:2.4.1
LABEL maintainer="Eric Ho <dho.eric@gmail.com>"

### Base setup
RUN gem install bundler
WORKDIR /data/app

### Install gem
ADD Gemfile .
ADD Gemfile.lock .
RUN bundle install

ADD . .
CMD ./entrypoint.sh
