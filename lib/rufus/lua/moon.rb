require "rufus/lua/moon/version"

module Rufus
  module Lua
    module Moon
      
    end
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
end
