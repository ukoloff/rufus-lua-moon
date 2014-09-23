class TestV < Minitest::Test
  def test_require
    s=Rufus::Lua::State.new.moon!
    {
      moonscript: %w(util version),
      moon: %w(all),
    }.map{|k, v|([nil]+v).map{|i| [k, i].compact*'.'}}
    .flatten.each {|f| s.eval "require '#{f}'"}
  end

  def test_missing
    assert_raises(Rufus::Lua::LuaError) do
      s=Rufus::Lua::State.new.moon!
      s.eval "require 'moonscript.oops'"
    end
  end
end
