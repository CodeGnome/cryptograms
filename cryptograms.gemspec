# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cryptograms/version'
require 'rake'

Gem::Specification.new do |spec|
  spec.name          = 'cryptograms'
  spec.version       = Cryptograms::VERSION
  spec.authors       = ['Todd A. Jacobs']
  spec.email         = ['codegnome@address-is.invalid']

  spec.summary       = 'Create cryptogram puzzles.' 
  spec.description   = 'Generate cryptograms using a pseudo-random ' +
                       'letter subtitution cypher.'
  spec.homepage      = 'https://github.com/CodeGnome/cryptograms'
  spec.license       = 'GPLv3'
  spec.files         = FileList[
                         'AUTHORS',
                         'Gemfile',
                         'bin/cryptogram',
                         'cryptograms.gemspec',
                         'lib/**/*',
                        ]
  spec.bindir        = 'bin'
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 2.0'

  spec.add_development_dependency 'bundler', '>= 1.10.6'
  spec.add_development_dependency 'rake',    '>= 10.4.2'
  spec.add_development_dependency 'rspec',   '>=  3.3.2'
end
