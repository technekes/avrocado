# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avrocado/version'

Gem::Specification.new do |spec|
  spec.name          = "avrocado"
  spec.version       = Avrocado::VERSION
  spec.authors       = ["John Allen"]
  spec.email         = ["john.allen@technekes.com"]

  spec.summary       = %q{JRuby based Avro library}
  spec.description   = %q{Wraps the avro.jar with a straightforward API for serializing/deserializing.}
  spec.homepage      = "https://github.com/connexio-labs/avrocado"
  spec.license       = "MIT"

  spec.files         = Dir.glob("{bin,lib}/**/*")
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'rspec', '~> 3.3.0'
  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
end
