# Primarily suppresses many standard deploy tasks that aren't needed in a
# static (or near static) environment.
#
# To make use of this, just stick the following in your Capfile (or deploy.rb):
#
#   require "nightcap/static_server"
#
module Nightcap::StaticServer
  Capistrano::Configuration.instance.load do
    namespace :deploy do
      task :finalize_update do; puts "deploy:finalize_update disabled"; end
      task :migrate         do; puts "deploy:migrate disabled"; end
      task :migrations      do; puts "deploy:migrations disabled"; end
      task :restart         do; puts "deploy:restart disabled"; end
      task :start           do; puts "deploy:start disabled"; end
      task :stop            do; puts "deploy:stop disabled"; end
    end
  end
end
