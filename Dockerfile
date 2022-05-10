ARG RUBY_VERSION
FROM ruby:${RUBY_VERSION}-bullseye

# See: https://github.com/nodesource/distributions
RUN set -eux; \
  apt update; \
  curl -fsSL https://deb.nodesource.com/setup_16.x | bash -; \
  apt install -y --no-install-recommends \
    \
    libsqlite3-dev \
    \
    nodejs \
  ; \
  rm -rf /var/lib/apt/lists/*
# See: https://classic.yarnpkg.com/en/docs/install#debian-stable
RUN npm install --global yarn

WORKDIR /opt/rails

COPY entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]

CMD [ "bash" ]
