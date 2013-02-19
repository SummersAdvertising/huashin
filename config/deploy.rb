set :application, "HuaShin"
set :repository,  "git@github.com:HanaHsu/farm.git"
set :deploy_to, "/home/deploy/HuaShin"

# set :scm, :git # You can set :scm explicitly or Capistrano will make an intelligent guess based on known version control directory names
# Or: `accurev`, `bzr`, `cvs`, `darcs`, `git`, `mercurial`, `perforce`, `subversion` or `none`

role :web, "summers.com.tw"                          # Your HTTP server, Apache/etc
role :app, "summers.com.tw"                          # This may be the same as your `Web` server
role :db,  "summers.com.tw", :primary => true # This is where Rails migrations will run

set :deploy_via, :remote_cache
set :deploy_env, "production"
set :rails_env, "production"
set :scm, :git
set :branch, "master"
set :scm_verbose, true
set :use_sudo, false

set :user, "deploy"

# if you want to clean up old releases on each deploy uncomment this:
# after "deploy:restart", "deploy:cleanup"

# if you're still using the script/reaper helper you will need
# these http://github.com/rails/irs_process_scripts

# If you are using Passenger mod_rails uncomment this:
# namespace :deploy do
#   task :start do ; end
#   task :stop do ; end
#   task :restart, :roles => :app, :except => { :no_release => true } do
#     run "#{try_sudo} touch #{File.join(current_path,'tmp','restart.txt')}"
#   end
# end

namespace :deploy do 
	desc "restart" 
	task :restart do
		run "touch #{current_path}/tmp/restart.txt"
	end
end
desc "Create database.yml and asset packages for production"
after("deploy:update_code") do
	db_config = "#{shared_path}/config/database.yml.production"
	run "cp #{db_config} #{release_path}/config/database.yml"
end