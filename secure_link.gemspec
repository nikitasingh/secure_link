# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secure_link/version'

Gem::Specification.new do |spec|
  spec.name          = "secure_link"
  spec.version       = SecureLink::VERSION
  spec.authors       = ["Nikita Singh"]
  spec.email         = ["nikita_singh@external.mckinsey.com"]
  spec.summary       = "This gem helps you authorize your Rails link with the help of cancan and devise"
  spec.description   = "This gem helps you authorize your Rails link with the help of cancan and devise"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec-rails'
end
