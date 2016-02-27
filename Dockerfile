FROM ruby:2.3

MAINTAINER Anthony Smith <anthony@sticksnleaves.com>

ENV APP_HOME /usr/src/app
ENV BUNDLE_HOME /usr/src/bundle

ENV BUNDLE_PATH $BUNDLE_HOME
ENV BUNDLE_APP_CONFIG $BUNDLE_HOME
ENV GEM_HOME $BUNDLE_HOME
ENV GEM_SPEC_CACHE $BUNDLE_HOME/specifications
ENV PATH $BUNDLE_HOME/bin:$PATH

RUN apt-get update -y \
    && apt-get upgrade -y

RUN gem install rubygems-update --no-document
RUN gem install bundler --no-document

WORKDIR $APP_HOME
