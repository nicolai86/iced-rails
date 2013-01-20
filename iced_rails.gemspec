# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iced_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "iced_rails"
  gem.version       = IcedRails::VERSION
  gem.authors       = ["Raphael Randschau"]
  gem.email         = ["nicolai86@me.com"]
  gem.description   = %q{Add support for .iced IcedCoffeeScript assets to the asset pipeline}
  gem.summary       = %q{Add support for .iced IcedCoffeeScript assets to the asset pipeline}
  gem.homepage      = "http://maxtaco.github.com/coffee-script"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'iced-coffee-script'
  gem.add_dependency 'rails', '~> 3.2.11'
end
