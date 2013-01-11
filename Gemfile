source 'https://rubygems.org'

gem 'rails', '~> 3.2.1'
gem 'pg'
gem 'heroku'
gem 'devise'
gem 'devise_invitable', '~> 1.0.0'
gem 'bcrypt-ruby', '>= 3.0.1'
gem 'gmaps4rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :development, :test do
  gem 'rspec-rails', '2.8.1'
  gem 'guard-rspec', '0.5.5'
end

group :test do
  gem 'rspec-rails', '2.8.1'
  gem 'capybara', '1.1.2'
  #gem 'rb-inotify', '0.8.8'
  #gem 'libnotify', '0.5.9'
  gem 'rb-fsevent', '0.9.1', :require => false
  gem 'guard-spork', '0.3.2'
  gem 'spork', '0.9.0'
  gem 'factory_girl_rails', '<=1.7.0'
end

group :production do
  gem 'thin'
end