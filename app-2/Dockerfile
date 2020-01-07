FROM ruby:2.7
# Install node for asset building
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

WORKDIR /myapp
# Copy across dependencies and install them
COPY Gemfile Gemfile.lock /myapp/
RUN bundle install
ADD . /myapp
