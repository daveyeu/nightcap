# Phusion Passenger support.
require "nightcap"

module Nightcap::Passenger
  Capistrano::Configuration.instance.load do
    namespace :deploy do
      task :restart, :roles => :app, :except => { :no_release => true } do
        run "touch #{current_path}/tmp/restart.txt"
      end

      task :start do; puts "deploy:start disabled"; end
      task :stop  do; puts "deploy:stop disabled"; end
    end
  end
end
