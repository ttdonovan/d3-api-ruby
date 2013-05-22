# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'd3/api/version'

Gem::Specification.new do |spec|
  spec.name          = 'd3_api'
  spec.version       = D3::API::VERSION
  spec.authors       = ['Tanner Donovan']
  spec.email         = ['ttdonovan@gmail.com']
  spec.description   = %q{D3API.rb is a Ruby library for the Blizzard Community Platform Diablo 3 API.}
  spec.summary       = %q{D3API.rb is a Ruby library for the Blizzard Community Platform Diablo 3 API.}
  spec.homepage      = 'https://github.com/ttdonovan/d3-api-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
