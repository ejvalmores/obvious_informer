# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'obvious_informer/version'

Gem::Specification.new do |spec|
  spec.name          = "obvious_informer"
  spec.version       = ObviousInformer::VERSION
  spec.authors       = ["Elmar John N. Valmores"]
  spec.email         = ["ejvalmores@gmail.com"]
  spec.description   = %q{Just a simple gem that allows me to make some log messages really obvious to see while tailing logs.}
  spec.summary       = %q{Just a simple gem that allows me to make some log messages really obvious to see while tailing logs.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
