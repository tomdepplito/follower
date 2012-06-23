# -*- encoding: utf-8 -*-
require File.expand_path('../lib/follower/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Tom Depplito & Michael Kaiser-Nyman"]
  gem.email         = ["tomdepplito@gmail.com"]
  gem.description   = %q{A Ruby gem which authenticates an application and allows you to follow your friends on Linkedin, Tumblr and Twitter.}
  gem.summary       = %q{This gem uses oauth to easily authenticate your app once you have developer keys from the afore mentioned websites.  It also uses the respective site APIs to follow/connect with other users on each platform.}
  gem.homepage      = "https://github.com/tomdepplito/follower"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "follower"
  gem.require_paths = ["lib"]
  gem.version       = Follower::VERSION

  gem.add_dependency 'oauth'
  gem.add_dependency 'launchy'
end
