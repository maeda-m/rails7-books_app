#!/bin/bash

# See: https://docs.docker.com/samples/rails/
mkdir -p /opt/rails/tmp/pids
rm -f /opt/rails/tmp/pids/server.pid

bundle install
rails db:create
rails db:migrate

exec "$@"
