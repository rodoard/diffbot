# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'diffbot/version'

Gem::Specification.new do |spec|
  spec.name          = "diffbot"
  spec.version       = Diffbot::VERSION
  spec.authors       = ["Mitz Suyi"]
  spec.email         = ["mitzsuyi@gmail.com"]
  spec.summary       = "diffbot web api client"
  spec.description   = "sample client for diffbot web api in ruby"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.7"
  spec.add_development_dependency "fakeweb", ["~> 1.3"]
  spec.add_dependency  "httparty", ">= 0.7.6"
  spec.add_dependency  "activesupport"
end
