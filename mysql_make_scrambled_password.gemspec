# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mysql_make_scrambled_password/version'

Gem::Specification.new do |spec|
  spec.name          = 'mysql_make_scrambled_password'
  spec.version       = MysqlMakeScrambledPassword::VERSION
  spec.authors       = ['Genki Sugawara']
  spec.email         = ['sugawara@cookpad.com']

  spec.summary       = %q{Execute MySQL PASSWORD() function in Ruby.}
  spec.description   = %q{Execute MySQL PASSWORD() function in Ruby.}
  spec.homepage      = 'https://github.com/winebarrel/mysql_make_scrambled_password'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib', 'ext']
  spec.extensions    = 'ext/extconf.rb'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake-compiler'
end
