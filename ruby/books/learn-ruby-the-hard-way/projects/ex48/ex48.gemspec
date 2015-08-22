# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "ex48"
  spec.version       = '1.0'
  spec.authors       = ["WG"]
  spec.email         = ["nope@nope.com"]
  spec.summary       = %q{Nonthing}
  spec.description   = %q{Nothing}
  spec.homepage      = "http://nope.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/ex48.rb']
  spec.executables   = ['bin/ex48']
  spec.test_files    = ['tests/test_*.rb']
  spec.require_paths = ["lib"]
end
