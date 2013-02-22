# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'poignant/version'

Gem::Specification.new do |gem|
  gem.name          = "poignant"
  gem.version       = Poignant::VERSION
  gem.authors       = ["Aaron Massey"]
  gem.email         = ["akmassey@sixlines.org"]
  gem.description   = %q{Poignant is a toolkit for natural language processing in Ruby.}
  gem.summary       = %q{Poignant is a toolkit for natural language processing in Ruby.  It is named in honor of why the lucky stiff.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
