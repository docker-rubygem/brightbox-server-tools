FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.4.6

RUN gem install brightbox-server-tools --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["railsapp-apache"]
CMD ["--help"]
