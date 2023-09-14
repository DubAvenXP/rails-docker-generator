FROM ruby:3.2.2

WORKDIR /app

RUN apt-get update -yqq \
    && apt-get install -yqq --no-install-recommends \
      nodejs \
      xfonts-base \
      xfonts-75dpi \
    && rm -rf /tmp/*

COPY Gemfile* .

# COPY ./app /app
RUN gem install bundler
RUN bundle install

# Entrypoint is the command that will be executed when the container starts
# in this case entrypoint.sh is used to kill any existing processes on the
# port that the app is running on and then start the rails server

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
