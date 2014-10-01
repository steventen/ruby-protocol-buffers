FROM ruby:2.1.3-gemspec-onbuild

RUN apt-get update
RUN apt-get install -y protobuf-compiler

CMD bundle exec rake
