source 'https://rubygems.org'

ruby "2.2.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.3'

# Use postgres as the database for Active Record
gem 'pg'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0.3'
gem 'bourbon'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 2.7.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '~> 4.1.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'redcarpet'

# Use jquery as the JavaScript library
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.3.0'

# Use ActiveAdmin
# gem 'activeadmin', github: 'gregbell/active_admin'
gem 'devise'
gem 'activeadmin', '~> 1.0.0.pre1'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
gem 'byebug', group: [:development, :test]

gem 'newrelic_rpm'

gem 'dotenv-rails', group: [:development, :test]

gem 'actionview-encoded_mail_to'

group :development do
  gem 'binding_of_caller'
  gem 'better_errors'
  gem 'guard', '>= 2.12.6'
  gem 'guard-bundler'
  gem 'guard-minitest'
  gem 'guard-livereload', require: false
end

group :test do
  gem 'faker'
  gem 'minitest', '~> 5.7.0'
  gem 'minitest-rails'
end

group :production do
  gem 'rails_12factor'
end
