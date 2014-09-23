class TestV < Minitest::Test
  def test_require
    s=Rufus::Lua::State.new.moon!
    {
      moonscript: %w(util version),
      moon: %w(all),
    }.map{|k, v|([nil]+v).map{|i| [k, i].compact*'.'}}
    .flatten.each {|f| s.eval "require '#{f}'"}
  end
end