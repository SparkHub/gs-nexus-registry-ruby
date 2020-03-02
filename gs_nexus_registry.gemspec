# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gs_nexus_registry/version'

Gem::Specification.new do |spec|
  spec.name          = 'gs-nexus-registry-ruby'
  spec.version       = GsNexusRegistry::VERSION
  spec.authors       = ['Maxime Chaisse-Leal']
  spec.email         = ['maxime.chaisseleal@gmail.com']

  spec.summary       = 'Release gems into nexus repository manager instead of RubyGems.'
  spec.description   = 'Release gems into nexus repository manager instead of RubyGems.'
  spec.homepage      = 'https://github.com/SparkHub/gs-nexus-registry'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nexus', '~> 1.3'

  spec.add_development_dependency 'bundler', '~> 1.16'
  spec.add_development_dependency 'rake', '~> 13.0.1'
  spec.add_development_dependency 'reek'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop'
end
