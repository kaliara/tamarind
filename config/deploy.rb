require 'bundler/capistrano'
# set :application, "tamarindoflondon.com"
set :ip, "50.56.57.18"
set :user, "tamarind"
set :application, ip
role :web, ip
role :app, ip
role :db,  ip, :primary => true

set :repository,  "git@github.com:kaliara/tamarind.git"
set :deploy_to, "/home/tamarind/www"
set :deploy_via, :copy

set :port, 30000
set :use_sudo, false
set :scm, :git

set :runner, user

# Passenger
namespace :deploy do
  task :start do ; end
  task :stop do ; end
  task :restart, :roles => :app, :except => { :no_release => true } do
    run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
  end
end

namespace :assets do
  task :symlink, :roles => :app do
    run "ln -nfs #{shared_path}/images #{release_path}/public/images"
  end
end

namespace :deploy do  
  desc "Update the crontab file"  
  task :update_crontab, :roles => :db do  
    # run "cd /home/kaliara/public_html/wtd/current && whenever --update-crontab wtd"  
  end  
end

after "deploy", "deploy:migrate" 
after "deploy", "deploy:cleanup"
# after "deploy:symlink", "assets:symlink"
# after "deploy:symlink", "deploy:update_crontab"  
