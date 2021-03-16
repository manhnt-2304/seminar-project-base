FROM ruby:2.7.2-alpine3.12
ENV PATH="/app/bin:$PATH"
ENV APP_HOME /app

RUN apk update --no-cache && \
  apk add --no-cache tzdata bash vim g++ make sqlite-dev

WORKDIR $APP_HOME
