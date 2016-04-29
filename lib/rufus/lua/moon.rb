require "rufus/lua"
require_relative "moon/version"

module Rufus::Lua
  class State
    def moon!
      self['package']['path']=
        (['', '/init'].map{|x|File.expand_path "?#{x}.lua", Moon::Path}<<
         self['package']['path'])*';'
      eval 'require "moonscript"'
      self
    end
  end
end
