lock "~> 3.11.0"

set :application, "sreedev"
set :repo_url, "git@github.com:sreedevk/sreedev.git"
set :git_shallow_clone, 1
set :branch, "master"
set :use_sudo, true
set :deploy_to, "/home/ubuntu/apps/sreedev"
set :rails_env, :production
set :pty, true
append :linked_files, "config/database.yml", "config/secrets.yml"
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"
set :keep_releases, 5
