FROM ruby:2.4.2-jessie

ENV LC_ALL C.UTF-8

RUN mkdir /app
RUN mkdir /bundle

# Allow for caching of bundled gems
ENV BUNDLE_GEMFILE=/app/Gemfile \
  BUNDLE_JOBS=2 \
  BUNDLE_PATH=/bundle

ENV PATH=$BUNDLE_PATH/bin:$PATH

WORKDIR /app
COPY . /app
RUN bundle install