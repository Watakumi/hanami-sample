FROM ruby:2.7.4-alpine

RUN apk add --no-cache build-base postgresql postgresql-dev libpq

WORKDIR /app
COPY Gemfile /app/Gemfile
COPY Gemfile.lock /app/Gemfile.lock
RUN gem install bundler -v 2.2.22
RUN bundle install -j$(nproc) --quiet
COPY . /app

EXPOSE 2300
ENTRYPOINT [ "bundle", "exec" ]
