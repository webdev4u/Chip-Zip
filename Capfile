$:.unshift(File.expand_path('./lib', ENV['rvm_path'])) # Add RVM's lib directory to the load path.
require "rvm/capistrano"                  # Load RVM's capistrano plugin.
set :rvm_ruby_string, '1.9.3'        # Or whatever env you want it to run in.

require 'capistrano-deploy'
use_recipes :git, :rails, :bundle, :unicorn

server 'chip-zip.net', :web, :app, :db, :primary => true
set :user, 'chip-zip'
set :deploy_to, '/home/chip-zip/Sites'
default_run_options[:pty] = true  # Must be set for the password prompt
                                  # from git to work
set :repository, 'git@github.com:webdev4u/Chip-Zip.git'
set :branch, "master"

after 'deploy:update',  'bundle:install'
after 'deploy:restart', 'unicorn:stop'
