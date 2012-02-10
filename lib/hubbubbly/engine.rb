require 'inherited_resources'
require 'haml'

module Hubbubbly
  class Engine < Rails::Engine
    isolate_namespace Hubbubbly
    engine_name "hubbubbly"

    config.generators do |g|
      g.template_engine :haml
      g.test_framework :rspec
    end

    config.mount_at = '/hub/'
    
    # Load rake tasks
    rake_tasks do
      load File.join(File.dirname(__FILE__), 'tasks/events.rake')
    end
    
    initializer "check config" do |app|
      # make sure mount_at ends with trailing slash
      config.mount_at += '/hub/' unless config.mount_at == '/hub/' || config.mount_at.last == '/hub/'
    end
    
    initializer "static assets" do |app|
      app.middleware.use ::ActionDispatch::Static, "#{root}/public"
    end
  end
end
