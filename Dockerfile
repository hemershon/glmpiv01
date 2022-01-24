FROM ruby:3.1.0-alpine
ENV BUNDLER_VERSION=2.3.3

RUN apk add --update --no-cache \
      binutils-gold \
      build-base \
      curl \
      file \
      g++ \
      gcc \
      git \
      less \
      libstdc++ \
      libffi-dev \
      libc-dev \ 
      linux-headers \
      libxml2-dev \
      libxslt-dev \
      libgcrypt-dev \
      make \
      netcat-openbsd \
      nodejs \
      openssl \
      pkgconfig \
      postgresql-dev \
      python3 \
      tzdata \
      yarn

RUN gem install bundler -v 2.3.3
WORKDIR /app
RUN $USER:$USER /app
COPY Gemfile Gemfile.lock /app/

RUN bundle config build.nokogiri --use-system-libraries
RUN bundle check || bundle install

COPY package.json yarn.lock /app/
RUN yarn install --check-files
COPY . /app/

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
