# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'average/version'

Gem::Specification.new do |spec|
  spec.name          = "average"
  spec.version       = Average::VERSION
  spec.authors       = ["Fernando"]
  spec.email         = ["fgonzalezaguilera@gmail.com"]
  spec.description   = %q{Find the arithmethic mean/mode/median of an array of numbers .}
  spec.summary       = %q{Find the arithmethic mean/mode/median of an array of numbers .}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'rspec'
end
