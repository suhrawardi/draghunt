# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'draghunt/version'

Gem::Specification.new do |spec|
  spec.name          = 'draghunt'
  spec.version       = Draghunt::VERSION
  spec.authors       = ['jarra']
  spec.email         = ['suhrawardi@gmail.com']
  spec.summary       = %q{generates churn and complexity metrics}
  spec.description   = %q{another work in progress}
  spec.homepage      = 'https://github.com/suhrawardi/draghunt'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
end
