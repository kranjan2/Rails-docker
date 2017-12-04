#!/bin/bash -xe

rails_env=${RAILS_ENV:-development}

RAILS_ENV=${rails_env} rake db:migrate
RAILS_ENV=${rails_env} rake assets:precompile
RAILS_ENV=${rails_env} bundle exec puma -C config/puma.rb
