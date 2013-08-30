# -*- encoding: utf-8 -*-
require File.expand_path('../lib/union_find/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Matt Weppler"]
  gem.email         = ["mweppler@gmail.com"]
  gem.description   = %q{Just some union find algorithm stuff}
  gem.summary       = %q{Union Find}
  gem.homepage      = "http://matt.weppler.me"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "union_find"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"
end
