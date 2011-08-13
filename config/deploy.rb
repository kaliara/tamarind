require 'bundler/capistrano'
# require 'capistrano/ext/multistage'
# set :default_stage, "production"

# set :application, "tamarindoflondon.com"
set :application, "50.56.57.18"

role :web, "50.56.57.18"                          # Your HTTP server, Apache/etc
role :app, "50.56.57.18"                          # This may be the same as your `Web` server
role :db,  "50.56.57.18", :primary => true # This is where Rails migrations will run

set :user, "tamarind"
set :repository,  "git@github.com:kaliara/tamarind.git"

set :deploy_to, "/home/tamarind/www"
set :deploy_via, :copy

set :port, 30000
set :use_sudo, true
set :scm, :git

# If you are using Passenger mod_rails uncomment this:
# if you're still using the script/reapear helper you will need
# these http://github.com/rails/irs_process_scripts

namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
    # run "cd #{deploy_to}/current && rvmsudo #{passenger_path}passenger start -e #{rails_env} -p #{passenger_port} -a 127.0.0.1 -d --pid-file #{release_path}\ /tmp/pids/passenger.#{passenger_port}.pid"
  end
end

set :runner, user

after "deploy", "deploy:migrate" 
after "deploy", "deploy:cleanup"