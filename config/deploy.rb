set :stages, %w{production staging}
set :default_stage, 'staging'
require 'capistrano/ext/multistage'

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
