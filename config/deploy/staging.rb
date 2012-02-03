role :web, "staging.hubbubbly.com"                          # Your HTTP server, Apache/etc
role :app, "staging.hubbubbly.com"                          # This may be the same as your `Web` server
role :db,  "staging.hubbubbly.com", :primary => true 

#set :user, 'hubbubbly'
set :deploy_to, 'staging/hubbubbly'
