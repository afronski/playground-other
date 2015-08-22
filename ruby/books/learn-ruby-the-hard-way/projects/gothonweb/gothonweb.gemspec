# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "gothonweb"
  spec.version       = '1.0'
  spec.authors       = ["WG"]
  spec.email         = ["nope@nope.com"]
  spec.summary       = %q{Nope}
  spec.description   = %q{Nope}
  spec.homepage      = "http://nope.com/"
  spec.license       = "MIT"

  spec.files         = ['lib/gothonweb.rb']
  spec.executables   = ['bin/app']
  spec.test_files    = ['tests/test_*.rb']
  spec.require_paths = ["lib"]
end
