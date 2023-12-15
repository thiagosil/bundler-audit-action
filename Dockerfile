FROM ruby:3.1.1-alpine3.14

COPY LICENSE README.md /
COPY entrypoint.sh /entrypoint.sh

RUN apk add git
RUN gem install bundler bundler-audit

ENTRYPOINT ["/entrypoint.sh"]
