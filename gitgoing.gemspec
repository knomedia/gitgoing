# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gitgoing/version'

Gem::Specification.new do |gem|
  gem.name          = "gitgoing"
  gem.version       = Gitgoing::VERSION
  gem.authors       = ["jsk"]
  gem.email         = ["knomedia@gmail.com"]
  gem.description   = %q{Ruby CLI for quickly managing and cloning your favorite git repos}
  gem.summary       = %q{Ruby CLI for quickly managing and cloning your favorite git repos}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
