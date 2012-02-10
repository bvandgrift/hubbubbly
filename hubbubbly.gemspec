# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "hubbubbly/version"

Gem::Specification.new do |s|
  s.name        = "hubbubbly"
  s.version     = Hubbubbly::Gem::VERSION
  s.authors     = ["Ben Vandgrift and Flaviu Simihaian"]
  s.email       = ["ben@vandgrift.com"]
  s.homepage    = "http://github.com/bvandgrift/hubbubbly"
  s.summary     = %q{A rails engine for calendar aggregation}
  s.description = %q{Thiss.add_runtime_dependency includes calendar feed and event aggregation and rss feed aggregation.}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_runtime_dependency 'haml'

  s.add_runtime_dependency 'feedzirra'
  s.add_runtime_dependency 'loofah-activerecord'
  s.add_runtime_dependency 'loofah'
  s.add_runtime_dependency 'ri_cal', '0.8.8'
  s.add_runtime_dependency 'inherited_resources', '1.3.0'
  s.add_runtime_dependency 'formtastic'

  s.add_runtime_dependency 'bcrypt-ruby', '~> 3.0.0'
  s.add_runtime_dependency 'rails-footnotes', '>= 3.7.5.rc4'

  s.add_development_dependency 'rspec-rails', '~> 2.6'
  s.add_development_dependency 'factory_girl_rails', '~> 1.2'
  s.add_development_dependency 'guard', '~> 0.5'
  s.add_development_dependency 'guard-bundler', '~> 0.1.3'
  s.add_development_dependency 'guard-rspec', '~> 0.4'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'faker'
  s.add_development_dependency 'database_cleaner', '0.5.2'
  s.add_development_dependency 'simplecov', '~> 0.4'
end
