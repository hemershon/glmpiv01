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

# RUN bundle config build.nokogiri --use-system-libraries
RUN bundle update --bundler
RUN bundle check || bundle install --jobs $(nproc) --retry 3 --without development test \
      && rm -rf /usr/local/bundle/bundler/gems/*/.git /usr/local/bundle/cache/

COPY package.json yarn.lock /app/
RUN yarn install --check-files

ENV NODE_ENV production
ENV RAILS_ENV production
ENV RAILS_LOG_TO_STDOUT true

COPY . /app/

RUN bundle exec rails webpacker:verify_install
RUN SECRET_KEY_BASE=nein bundle exec rails assets:precompile

EXPOSE 3000

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb"]
