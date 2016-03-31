# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hobson/version'

Gem::Specification.new do |spec|
  spec.name          = 'hobson'
  spec.version       = Hobson::VERSION
  spec.authors       = ['plutonbacon']
  spec.email         = ['plutonbacon@dynosoft.org']
  spec.summary       = ''
  spec.homepage      = 'https://github.com/plutonbacon/hobson.git'
  spec.license       = 'MIT'

  spec.required_ruby_version = '>= 2.0.0'
  spec.files = Dir['lib/**/*'] + %w(README.md LICENSE)

  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  # Development only
  spec.add_development_dependency 'bundler',  '~> 1.11.2'
  spec.add_development_dependency 'rake',     '~> 11.1.2'
  spec.add_development_dependency 'rubocop',  '~> 0.39.0'
  spec.add_development_dependency 'rspec',    '~> 3.4.0'
  spec.add_development_dependency 'pry',      '~> 0.10.3'
  spec.add_development_dependency 'yard',     '~> 0.8.7.6'
end
