require 'simplecov'
SimpleCov.start do
  add_filter "/spec/"
  add_filter "/.bundle/"
  add_filter "/config/"
end

ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

# Requires supporting files with custom matchers and macros, etc,
# in ./support/ and its subdirectories.
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each {|f| require f}

RSpec.configure do |config|
  config.mock_with :rspec

  config.filter_run :focused => true
  config.run_all_when_everything_filtered = true

  config.alias_example_to :fit, :focused => true
  config.alias_example_to :they

  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  # If you're not using ActiveRecord, or you'd prefer not to run each of your
  # examples within a transaction, comment the following line or assign false
  # instead of true.
  config.use_transactional_fixtures = true
end
