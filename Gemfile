source 'https://rubygems.org'

gem 'rails', '3.2.9' # hardset ruby version

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
gem 'ember-rails', '~> 0.8.0' # ember.js for rails
gem 'haml-rails', '~> 0.3.5' # haml
# gem 'sht_rails' # shared handlebar assets

group :assets do
  gem 'hamlbars', '~> 2.0.0' # haml handlebar assets
  gem 'compass-rails', '~> 1.0.3' # compass for rails
  gem 'bootstrap-sass', '~> 2.2.1.1' # twitter bootstrap for rails  
  gem 'sass-rails', '~> 3.2.5' # nice sass assets
  gem 'coffee-rails', '~> 3.2.2' # nice coffee asets
  gem 'therubyracer', '~> 0.11.0', :platforms => :ruby # javascript compiler in ruby
  gem 'uglifier', '~> 1.3.0' # minifier for javascript
end

group :development, :test do
  gem 'factory_girl_rails', '~> 4.1.0' # generate models
  gem 'jasmine-rails', '~> 0.3.2' # test ember
  gem 'cucumber-rails', '~> 1.3.0' # story based tests
  gem 'rspec-rails', '~> 2.12.0' # unit tests
  gem 'capybara', '~> 2.0.1' # browser driven story tests
  gem 'spork', '~> 0.9.2' # process management, one server for all tests
  gem 'pry', '~> 0.9.10' # debuging
  gem 'pry-remote', '~> 0.1.6' #remote debuggin
end