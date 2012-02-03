role :web, "hubbubbly.com"                          # Your HTTP server, Apache/etc
role :app, "hubbubbly.com"                          # This may be the same as your `Web` server
role :db,  "hubbubbly.com", :primary => true # This is where Rails migrations will run

set :user, 'hubbubbly'
set :deploy_to, 'production/hubbubbly'
