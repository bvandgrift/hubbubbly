source 'http://rubygems.org'

gem 'rails', '3.1.0'
gem 'haml'
gem 'sass'
gem 'pg'
gem 'authlogic'
#gem 'paperclip'
#gem 'aws-s3'
gem 'feedzirra'
gem 'loofah-activerecord'
gem 'loofah'
gem 'ri_cal', '0.8.7'
gem 'inherited_resources', '1.3.0'
gem 'icalendar', '1.1.5'

group :development do
  gem 'capistrano', '2.5.19'
end

group :test, :development, :cucumber do
  gem 'rspec-rails', '~> 2.6'
  gem 'factory_girl_rails', '~> 1.1'
  gem 'guard', '~> 0.5', :require => nil
  gem 'guard-bundler', '~> 0.1.3', :require => nil
  gem 'guard-rspec', '~> 0.4', :require => nil
  if RUBY_PLATFORM.downcase.include?("darwin")
    gem 'growl'
    gem 'rb-fsevent'
  end
  gem 'capybara'
  gem 'faker'
  gem 'database_cleaner', '0.5.2'
end
