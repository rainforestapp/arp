# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'arp/version'

Gem::Specification.new do |spec|
  spec.name          = "arp"
  spec.version       = Arp::VERSION
  spec.authors       = ["Simon Mathieu"]
  spec.email         = ["simon.math@gmail.com"]
  spec.summary       = %q{Retrieve the content of the ARP cache}
  spec.homepage      = "https://github.com/rainforestapp/arp"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
