require "rake"

Gem::Specification.new do |spec|
  spec.name     = "nightcap"
  spec.version  = "0.0.1"
  spec.summary  = "Little helpers for Capistrano"
  spec.author   = "David Yeu"
  spec.email    = "me@davidyeu.com"
  spec.homepage = "http://code.forsamurai.com/nightcap/"
  spec.files    = FileList["lib/**/*.rb", "test/**/*.rb", "[A-Z]*"].to_a

  spec.add_dependency("capistrano", ">= 2.0.0")
end
