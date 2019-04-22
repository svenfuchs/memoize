# encoding: utf-8

$:.unshift File.expand_path('../lib', __FILE__)
require 'memoize/version'

Gem::Specification.new do |s|
  s.name          = 'memoize'
  s.version       = Memoize::VERSION
  s.authors       = ['Sven Fuchs']
  s.email         = ['me@svenfuchs.com']
  s.homepage      = 'https://github.com/svenfuchs/memoize'
  s.licenses      = ['MIT']
  s.summary       = '[summary]'
  s.description   = '[description]'

  s.files         = Dir.glob('{bin/*,lib/**/*,[A-Z]*}')
  s.platform      = Gem::Platform::RUBY
  s.require_paths = ['lib']
end
