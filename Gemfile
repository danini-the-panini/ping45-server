ruby '2.1.2'
source 'https://rubygems.org'

gem 'dotenv-rails', :groups => [:development, :test]

gem 'rails', '~> 4.1'
gem 'pg'
gem 'puma'

# Core
gem 'breadcrumbs_on_rails'
gem 'browser'
gem 'high_voltage'
gem 'httparty'
gem 'kaminari'
gem 'redcarpet'
gem 'simple_form'
gem 'slim-rails'
gem 'nokogiri'

# CSS
# gem 'base45', '~> 0.9.0', git: 'https://b9fa16a939f3fcc54b834d757fa5db0dd3751e0b:x-oauth-basic@github.com/platform45/base45.git'
gem 'bourbon'
gem 'neat'
gem 'flexslider'
gem 'sass-rails', github: 'rails/sass-rails' # Use sass-rails master until Sass 3.3 is supported: https://github.com/rails/sass-rails/pull/192

# JavaScript
gem 'coffee-rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'turbolinks'
gem 'uglifier'

# File uploading
gem 'carrierwave'
gem 'fog'
gem 'mini_magick'

# Assets
gem 'font-awesome-rails'

# Mailers

# Misc
gem 'foreman'
gem 'jbuilder', '~> 2.0'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
end

group :development, :test do
  gem 'guard-rails'
  gem 'pry'
  gem 'pry-rails'
end

group :test do
  gem 'faker'
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'factory_girl_rails'
  gem 'rspec-html-matchers'
  gem 'rspec-rails'
  gem 'shoulda-matchers', require: false
  gem 'simplecov', require: false
  gem 'database_cleaner'
  gem 'launchy'
  gem 'webmock'
  gem 'sinatra'
  gem 'rack-ssl'
end

group :production do
  gem 'rails_12factor'
end
