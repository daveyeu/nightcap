Gem::Specification.new do |spec|
  spec.name     = "nightcap"
  spec.version  = "0.0.3"
  spec.summary  = "Little helpers for Capistrano"
  spec.author   = "David Yeu"
  spec.email    = "me@davidyeu.com"
  spec.homepage = "http://github.com/daveyeu/nightcap/"
  spec.files    = ["lib/nightcap/default.rb", "lib/nightcap/passenger.rb", "lib/nightcap/static_server.rb", "lib/nightcap.rb", "MIT-LICENSE", "README"]

  spec.add_dependency("capistrano", ">= 2.0.0")
end
