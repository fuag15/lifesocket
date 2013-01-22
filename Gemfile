source 'https://rubygems.org' # community gem host

gem 'rails', '3.2.11' # rails hard set
gem 'pg', '~> 0.14.1' # postgresql adapter
gem 'devise', '~> 2.1.2' # user control
gem 'cancan', '~> 1.6.8' # user ability
gem 'mini_magick', '~> 3.4' # image scaling
gem 'carrierwave', '~> 0.7.1' # file storage
gem 'remotipart', '~> 1.0.2' # ajax forms
gem 'jquery-rails', '~> 2.1.4' # jquery for rails
gem 'thin', '~> 1.5.0' # use thin web server
gem 'foreman', '~> 0.60.2' # easily spawn mutiple servers
gem 'gon', '~> 4.0.1' # pass vars to javascript
gem 'ember-rails', git: 'http://github.com/emberjs/ember-rails', ref: 'e7273f331370a5a5a4758ee4de40cc' # ember.js for rails
gem 'haml-rails', '~> 0.3.5' # haml
gem 'active_model_serializers', '~> 0.6.0' # serializers for jsoning

group :assets do
  gem 'compass-rails', '~> 1.0.3' # compass for rails
  gem 'bootstrap-sass-rails' # twitter bootstrap for rails
  gem 'hamlbars', '~> 2.0.0' # haml handlebar assets
  gem 'sass-rails', '~> 3.2.5' # nice sass assets
  gem 'coffee-rails', '~> 3.2.2' # nice coffee asets
  gem 'therubyracer', '~> 0.11.0', :platforms => :ruby # javascript compiler in ruby
  gem 'uglifier', '~> 1.3.0' # minifier for javascript
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.1.0' # generate models
  gem 'jasmine-rails', '~> 0.3.2' # test ember
  gem 'rspec-rails', '~> 2.12.0' # unit tests
  gem 'capybara', '~> 2.0.1' # browser driven story tests
  gem 'spork', '~> 0.9.2' # process management, one server for all tests
  gem 'pry', '~> 0.9.10' # debuging
  gem 'pry-remote', '~> 0.1.6' #remote debuggin
  gem 'rdoc', '~> 3.12' # docstrings
  gem 'database_cleaner', '~> 0.9.1' # keep testing db's tidey
  gem 'rb-inotify', '~> 0.8.8', :require => false # guard fs notify for linux
  gem 'rb-fsevent', '~> 0.9.2', :require => false # guard fs notify for OSX
  gem 'rb-fchange', '~> 0.0.6', :require => false # guard fs notify for Windows
  gem 'guard', '~> 1.5.4' # only rerun things like tests when we change the source since last run!
  gem 'guard-rspec', '~> 2.3.1' # guard for rspec tests
  gem 'guard-cucumber', '~> 1.2.2' # guard for cucumber tests
  gem 'guard-jasmine', '~> 1.10.1' # guard for jasmine tests
end

group :test do
  gem 'cucumber-rails', '~> 1.3.0' # story based tests
end

group :production do # explicit production asset gems for heroku
  gem 'compass-rails', '~> 1.0.3' # compass for rails
  gem 'bootstrap-sass-rails' # twitter bootstrap for rails
  gem 'hamlbars', '~> 2.0.0' # haml handlebar assets
  gem 'sass-rails', '~> 3.2.5' # nice sass assets
  gem 'coffee-rails', '~> 3.2.2' # nice coffee asets
  gem 'therubyracer', '~> 0.11.0', :platforms => :ruby # javascript compiler in ruby
  gem 'uglifier', '~> 1.3.0' # minifier for javascript
end