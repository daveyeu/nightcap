# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name     = %q{nightcap}
  s.version  = "0.0.4"

  s.authors  = ["David Yeu"]
  s.date     = %q{2009-08-27}
  s.email    = %q{me@davidyeu.com}
  s.files    = ["lib/nightcap/default.rb", "lib/nightcap/passenger.rb", "lib/nightcap/static_server.rb", "lib/nightcap.rb", "MIT-LICENSE", "README"]
  s.homepage = %q{http://github.com/daveyeu/nightcap}
  s.summary  = %q{Little helpers for Capistrano}

  s.add_dependency("capistrano", ">= 2.0.0")
end
