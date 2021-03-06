# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rufus/lua/moon/version'

Gem::Specification.new do |spec|
  spec.name          = "rufus-lua-moon"
  spec.version       = Rufus::Lua::Moon::VERSION
  spec.authors       = ["Stas Ukolov"]
  spec.email         = ["ukoloff@gmail.com"]
  spec.description   = 'Provides MoonScript for Rufus::Lua interpreter'
  spec.summary       = ''
  spec.homepage      = "https://github.com/ukoloff/rufus-lua-moon"
  spec.license       = "MIT"

  spec.files         = Dir[
    'lib/**/*',
    'vendor/leafo/moon/*.moon',
    'vendor/leafo/moonscript/**/*.lua',
  ]
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "rufus-lua-win"

  spec.add_dependency "rufus-lua"
end
