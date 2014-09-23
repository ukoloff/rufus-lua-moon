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
      puts
      puts "Lua version #{luav}"
      puts "Rufus::Lua version #{rufv}"
      puts "MoonScript version #{moonv}"
      puts "Rufus::Lua::Moon version #{gemv}"
    end
  end
end
