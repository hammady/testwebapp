FROM ruby:2.5.0

LABEL maintainer="Hossam Hammady <github@hammady.net>"

WORKDIR /home

ARG RACK_ENV=production
ARG BUNDLE_WITHOUT="development:test"

ENV RACK_ENV $RACK_ENV
ENV BUNDLE_WITHOUT $BUNDLE_WITHOUT

COPY Gemfile* /home/
RUN bundle install

COPY / /home/

EXPOSE 4567

CMD ["ruby", "app.rb"]
