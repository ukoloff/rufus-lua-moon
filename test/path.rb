class TestC < Minitest::Test
  def test_path
    s=Rufus::Lua::State.new.moon!
    s['package']['moonpath']=File.expand_path '../?.moon', __FILE__
    assert_equal 3.0, s.eval("return require 'path27'")
  end

  def test_fail
    s=Rufus::Lua::State.new.moon!
    assert_raises(Rufus::Lua::LuaError) do
      s.eval "require 'path27'"
    end
  end
end
