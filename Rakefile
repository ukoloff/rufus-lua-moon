require "bundler/gem_tasks"

desc 'Run tests'
task :test do         
  require "minitest/autorun"

  require 'rufus/lua/win'    if Gem.win_platform?
  require 'rufus/lua'
  require 'rufus/lua/moon'

  Dir.glob('./test/*.rb').each{|f| require f}
end

task default: :test
