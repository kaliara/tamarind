set :application, "tamarindoflondon.com"
set :user, "tamarind"

role :web, "50.56.57.18"                          # Your HTTP server, Apache/etc
role :app, "50.56.57.18"                          # This may be the same as your `Web` server
role :db,  "50.56.57.18", :primary => true # This is where Rails migrations will run

# after "deploy:symlink", "deploy:update_crontab"  
# after "deploy:symlink", "assets:symlink"