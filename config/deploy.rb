$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.

set :stages, %w{production staging}
set :default_stage, 'staging'

require 'capistrano/ext/multistage'
require 'bundler/capistrano'
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
require 'capistrano_colors'

set :rvm_ruby_string, '1.9.2@hubbubbly'        # Or whatever env you want it to run in.
set :rvm_type, :user

set :application, "hubbubbly"

set :use_sudo, false
set :port, ENV['port']

ssh_options[:forward_agent] = true
set :scm, :git
set :repository,  "git@github.com:bvandgrift/hubbubbly.git"
set :branch, "master"
set :deploy_via, :remote_cache
set :scm_verbose, true

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :db do
  task :symlink, :except => { :no_release => true } do
    run "ln -nfs #{shared_path}/config/database.yml #{release_path}/config/database.yml"
  end
end
after "deploy:symlink", "db:symlink"

namespace :omniauth do
  task :symlink, :except => { :no_release => true } do
    run "ln -nfs #{shared_path}/config/omniauth.yml #{release_path}/config/omniauth.yml"
  end
end
after "deploy:symlink", "omniauth:symlink"
