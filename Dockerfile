FROM ruby:2.4.1

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

# Install cmake
RUN apt-get update -yqqq && \
    apt-get install -y -qq cmake

# Install node
RUN apt-get update -yqqq && \
    apt-get install -y apt-transport-https && \
    curl -sL https://deb.nodesource.com/setup_8.x | bash - && \
    apt-get update -yqqq && \
    apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add - && \
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list && \
    apt-get update -yqqq && \
    apt-get install -y -qq yarn=1.10.* && \
    yarn --version
