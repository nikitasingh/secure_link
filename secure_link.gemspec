# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secure_link/version'

Gem::Specification.new do |spec|
  spec.name          = "secure_link"
  spec.version       = SecureLink::VERSION
  spec.authors       = ["Nikita Singh"]
  spec.email         = ["nikitaa_singh@yahoo.co.in"]
  spec.summary       = "This gem helps you authorize your Rails link_to helper"
  spec.description   = "This gem helps you authorize your Rails link_to helper"
  spec.homepage      = "https://github.com/nikitasingh/secure_link"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency 'rspec-rails'
end
