require "minitest/autorun"

class TestB < Minitest::Test
  def test_b1
    assert_equal 5, 2+3
  end

  def test_b2
    assert_equal 3, 4-1
  end
end
