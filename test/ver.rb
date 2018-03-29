class TestV < Minitest::Test
  def test_ver
    s=Rufus::Lua::State.new.moon!
    luav=s.eval 'return _VERSION'
    rufv=Rufus::Lua::VERSION
    moonv=s.eval 'return require("moonscript.version").version'
    gemv=Rufus::Lua::Moon::VERSION

    len=moonv.length

    assert_equal gemv[0...len], moonv.gsub('-', '.')
    c=gemv[len]
    assert(c.nil? || '.'==c)

    at_exit do
      s = <<-EOT
        Lua version #{luav}
        Rufus::Lua version #{rufv}
        MoonScript version #{moonv}
        Rufus::Lua::Moon version #{gemv}
      EOT
      s.gsub!(/^\s+/, '')
      puts
      puts s
      AppVeyor::Worker.message 'Versions', s  if defined? AppVeyor
    end
  end
end
