class TestV < Minitest::Test
  def test_ver
    at_exit do
      s=Rufus::Lua::State.new.moon!
      luav=s.eval 'return _VERSION'
      rufv=Rufus::Lua::VERSION
      moonv=s.eval 'return require("moonscript.version").version'
      gemv=Rufus::Lua::Moon::VERSION
      puts "Lua version #{luav}"
      puts "Rufus::Lua version #{rufv}"
      puts "MoonScript version #{moonv}"
      puts "Rufus::Lua::Moon version #{gemv}"
    end
  end
end
