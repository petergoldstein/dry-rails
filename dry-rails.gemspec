# coding: utf-8
# frozen_string_literal: true

require File.expand_path('../lib/dry/rails/version', __FILE__)

Gem::Specification.new do |spec|
  spec.name          = 'dry-rails'
  spec.version       = Dry::Rails::VERSION
  spec.authors       = ['Piotr Solnica']
  spec.email         = ['piotr.solnica@gmail.com']
  spec.summary       = 'Railtie for dry-rb'
  spec.homepage      = 'https://github.com/dry-rb/dry-rails'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']
  spec.required_ruby_version = '~> 2.4'

  spec.add_runtime_dependency 'dry-system', '~> 0.12'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
end
