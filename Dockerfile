# Simple Dockerfile for a RoR application
FROM ruby:2.5.1

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /task-manager-api

WORKDIR /task-manager-api

ADD Gemfile /task-manager-api/Gemfile
ADD Gemfile.lock /task-manager-api/Gemfile.lock

RUN bundle install
ADD . /task-manager-api