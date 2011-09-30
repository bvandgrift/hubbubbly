source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'haml'
gem 'sass'
gem 'devise'
gem 'mysql2'
#gem 'paperclip'
#gem 'aws-s3'
gem 'feedzirra'
gem 'loofah-activerecord'
gem 'loofah'
gem 'ri_cal', '0.8.8'
gem 'inherited_resources', '1.3.0'
gem 'formtastic'
gem 'heroku'
gem 'uglifier'

group :production do
  gem 'pg'
end

group :development do
  gem 'capistrano', '2.5.19'
  gem 'rails-footnotes', '>= 3.7.5.rc4'
end

group :test, :development, :cucumber do
  gem 'rspec-rails', '~> 2.6'
  gem 'factory_girl_rails', '~> 1.2'
  gem 'guard', '~> 0.5', :require => nil
  gem 'guard-bundler', '~> 0.1.3', :require => nil
  gem 'guard-rspec', '~> 0.4', :require => nil
  gem 'capybara'
  gem 'faker'
  gem 'database_cleaner', '0.5.2'
  gem 'simplecov', '~> 0.4', :require => false
end
