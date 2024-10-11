ARG RUBY_VERSION=2.5.9

FROM ruby:${RUBY_VERSION} as ruby25
MAINTAINER "Oscar Barrios <oscar.barrios@gmail.com>"
ARG RUBOCOP_VERSION=1.17.0
RUN gem install parallel -v 1.24.0
RUN gem install rubocop-ast -v 1.7.0
RUN gem install rubocop -v ${RUBOCOP_VERSION}
WORKDIR /app
VOLUME /app
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]

FROM ruby:${RUBY_VERSION} as ruby3
MAINTAINER "Oscar Barrios <oscar.barrios@gmail.com>"
ARG RUBOCOP_VERSION=1.66.1
RUN gem install rubocop -v ${RUBOCOP_VERSION}
WORKDIR /app
VOLUME /app
COPY docker-entrypoint.sh /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
