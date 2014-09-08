module Rufus
  module Lua
    module Moon
      Path=File.expand_path '../../../../../vendor/lua', __FILE__
      m=/(["'])(\d+(\.\d+){1,3})\1/.match File.read File.expand_path 'moonscript/version.lua', Path
      VERSION = m ? m[2] : '0.0.?'
    end
  end
end
