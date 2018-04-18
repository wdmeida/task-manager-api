source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use mysql as the database for Active Record
gem 'mysql2'
# Use Puma as the app server
gem 'puma'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # RSpec for Rails-3
  gem 'rspec-rails', '~> 3.5'
  gem 'pry-rails'
end

group :test do
  # Strategies for cleaning databases in Ruby. Can be used to ensure a clean state for testing. 
  gem 'database_cleaner'
  # Collection of testing matchers extracted from Shoulda.
  gem 'shoulda-matchers', '~> 3.1'
  # factory_girl is a fixtures replacement with a straightforward definition syntax
  gem 'factory_bot_rails'
  # A library for generating fake data such as names, addresses, and phone numbers. 
  gem 'faker'
end

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  # Preloader from rspec
  gem 'spring-commands-rspec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
# Flexible authentication solution for Rails with Warden.
gem 'devise'
# ActiveModel::Serializer implementation and Rails hooks 
gem 'active_model_serializers', '~> 0.10.0'
# Object-based searching
gem 'ransack'
# Authentication
gem 'omniauth'
gem 'devise_token_auth'
# Repository for collecting Locale data for Ruby on Rails I18n as well as other interesting, Rails related I18n stuff http://rails-i18n.org
gem 'rails-i18n', '~> 5.0.0'