lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vellari/version'

Gem::Specification.new do |spec|
  spec.name          = 'vellari'
  spec.version       = Vellari::VERSION
  spec.authors       = ['Bhuvan Arumugam']
  spec.email         = ['bhuvan@apache.org']
  spec.summary       = %w(Test scripts for cucumber evaluation)
  spec.description   = %w(BDD cucumber test suite)
  spec.homepage      = 'https://github.com/bhuvan/vellari'
  spec.license       = ''

  spec.files         = Dir.glob('{features,lib}/**/*') +
                       %w(Rakefile README.md)
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'cucumber', '~> 2.1'
  # spec.add_runtime_dependency 'nokogiri', '~> 1.6.4'
  spec.add_runtime_dependency 'rspec-expectations', '~> 3.3'
  spec.add_runtime_dependency 'syntax', '~> 1.2'

  # dependency for http_wrapper
  spec.add_runtime_dependency 'multipart-post', '~> 2.0'
  spec.add_runtime_dependency 'rubocop', '~> 0.35.1'
end
