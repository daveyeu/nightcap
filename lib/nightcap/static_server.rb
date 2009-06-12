# Primarily suppresses many standard deploy tasks that aren't needed in a
# static (or near static) environment.
require "nightcap"

module Nightcap::StaticServer
  Capistrano::Configuration.instance.load do
    namespace :deploy do
      task :finalize_update do; puts "deploy:finalize_update disabled"; end
      task :migrate         do; puts "deploy:migrate disabled"; end
      task :migrations      do; puts "deploy:migrations disabled"; end
      task :restart         do; puts "deploy:restart disabled"; end
      task :start           do; puts "deploy:start disabled"; end
      task :stop            do; puts "deploy:stop disabled"; end

      # Skip shared/* directories for deploy:setup
      task :setup, :except => { :no_release => true } do
        dirs = [deploy_to, releases_path, shared_path]
        try_sudo "umask 02 && mkdir -p #{dirs.join(' ')}"
      end
    end
  end
end
