FROM ruby:2.4.1

LABEL maintainer "David Spencer <david.spencer@atomicjolt.com>"

# Install cmake
RUN apt-get update -qq
RUN apt-get install -y -qq cmake 

# Install node
RUN apt-get install -y apt-transport-https
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update -yqqq
RUN apt-get install -y nodejs

# Install yarn
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN apt-get update -yqqq
RUN apt-get install -y -qq yarn=1.10.*
RUN yarn --version
