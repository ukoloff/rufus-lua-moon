class TestC < Minitest::Test
  def test_chain
    s=Rufus::Lua::State.new
    assert_equal s, s.moon!
  end
end
