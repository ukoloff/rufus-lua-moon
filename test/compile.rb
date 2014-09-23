class TestC < Minitest::Test
  def test_compile
    s=Rufus::Lua::State.new.moon!
    assert s.eval("return require('moonscript').to_lua('x = a b c')")[0] 
      .gsub(/\s+/, '')['=a(b(c))']
  end

  def test_fail
    s=Rufus::Lua::State.new.moon!
    refute s.eval("return require('moonscript').to_lua 'a=b:'")[0] rescue nil
  end
end
