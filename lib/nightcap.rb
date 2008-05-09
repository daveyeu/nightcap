module Nightcap
  Capistrano::Configuration.instance.load do
    namespace :nightcap do
      desc "Dummy task for testing"
      task :dummy do; end
    end
  end
end
