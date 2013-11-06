lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'iced/rails/version'

Gem::Specification.new do |gem|
  gem.name          = "iced-rails"
  gem.version       = ::Iced::Rails::VERSION
  gem.authors       = ["Raphael Randschau"]
  gem.email         = ["nicolai86@me.com"]
  gem.description   = %q{IcedCoffeeScript adapter for the Rails asset pipeline.}
  gem.summary       = %q{IcedCoffeeScript adapter for the Rails asset pipeline.}
  gem.homepage      = "https://github.com/nicolai86/iced-rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = Dir['spec/**/*']
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency 'iced-coffee-script'
  gem.add_runtime_dependency 'rails', '>= 3.2', '< 5.0'
  gem.add_development_dependency 'rspec-rails'
  gem.add_development_dependency 'sqlite3'
end
