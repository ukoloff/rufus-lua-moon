module Rufus
  module Lua
    module Moon
      root=File.expand_path '../../../../..', __FILE__
      subV=File.read(File.expand_path '.subversion', root).strip rescue ''
      subV="."+subV.gsub(/\W+/, '.') if subV.length>0
      Path=File.expand_path 'vendor/lua', root
      m=/(["'])(\d+(\.\d+){1,3}(-(?!0)[\da-z])*)\1/i.match File.read File.expand_path 'moonscript/version.lua', Path
      VERSION = m ? m[2].gsub('-', '.')+subV : '0.0.?'
    end
  end
end
