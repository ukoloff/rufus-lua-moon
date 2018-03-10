class TestAV < Minitest::Test
  def test_av
    # return unless defined? AppVeyor::Worker
    1000.times do |i|
      sleep 0.01
      Thread.new do
	::AppVeyor::Worker.test testFramework: 'None',
            testName: "Test #{i}",
            fileName: "none.rb:#{i+1}",
            outcome: 'Passed', 
            durationMilliseconds: 108
      end
    end
  end
end
