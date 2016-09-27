source 'https://rubygems.org'

# Specify your gem's dependencies in rufus-lua-moon.gemspec
gemspec

gem 'json', "#{/^1[.]/.match(RUBY_VERSION)? '~>' : '>='} 1.8"
gem "appveyor-worker" if ENV['APPVEYOR_API_URL']
