Goals
=====

In order to create a hub site, a potential user should do the following:

    gem install rails
    rails new my_hub
    
Then add 'hubbubbly' to their Gemfile

Start their rails app `rails s`, and visit
<pre>localhost:3000/hub/manage</pre> and see the management console.

In order to include hub features into an existing site, a potential user
should add the 'hubbubbly' gem to their Gemfile, and begin using the
helper partials to populate areas of their existing site. 

Theoretically.

To import migrations from the engine:

    rake hubbubbly:install:migrations

Then, you can run `rake db:migrate` to migrate.
