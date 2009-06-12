# Just some handy default settings.
#
# Be sure to add:
#
#   set :application, "application_name"
#   set :repository,  "git@host:path/to/repo"
#
#   set :staging_server,    "staging.localhost"
#   set :production_server, "production.localhost"
#
# And this needs to be require'd _after_ setting application.

require "nightcap"

Capistrano::Configuration.instance.load do
  set :scm,              :git
  set :branch,           "master"
  set :deploy_via,       :remote_cache
  set :repository_cache, "git_master"
  set :deploy_to,        "/web/#{application}"
  set :use_sudo,         false

  default_run_options[:pty] = true

  task :staging do
    server staging_server, :web, :app, :db
  end

  task :production do
    server production_server, :web, :app, :db
  end
end
