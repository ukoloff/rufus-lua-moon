class TestAV < Minitest::Test
  def test_av
    # return unless defined? AppVeyor::Worker
    ::AppVeyor::Worker.tests (1..1000).map do |i|
	::AppVeyor::Worker.test testFramework: 'None',
            testName: "Test #{i}",
            fileName: "none.rb:#{i+1}",
            outcome: 'Passed', 
            durationMilliseconds: 108
    end
  end
end


module AppVeyor::Worker
  def self.tests info
    x = api or return
    body = JSON.generate info
    x.post '/api/tests/batch',
      body,
      'Content-Length'=>body.length.to_s,
      'Content-Type'=>'application/json'
  end
end
