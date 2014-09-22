require_relative "req"

class TestA < Minitest::Test
  def test_a
    assert_equal 3, 2+1
    puts "V=#{Rufus::Lua::Moon::VERSION}"
  end
end
