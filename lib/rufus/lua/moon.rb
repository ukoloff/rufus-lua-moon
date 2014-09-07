require "rufus/lua/moon/version"

module Rufus
  module Lua
    module Moon
      
    end
    class State
      def moon!
        lib=File.expand_path '../../../../vendor/lua', __FILE__
        self['package']['path']=
          (['', '/init'].map{|x|File.expand_path "?#{x}.lua", lib}<<
           self['package']['path'])*';'
        eval 'require "moonscript"'
        self
      end
    end
  end
end
