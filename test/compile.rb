class TestC < Minitest::Test
  def test_compile
    s=Rufus::Lua::State.new.moon!
    assert s.eval("return require('moonscript').to_lua('a b c')")[0]
      .gsub(/\s+/, '')['a(b(c))']

  end
end
