require 'appveyor/worker'

class TestAV < Minitest::Test
  def test_av
    # return unless defined? AppVeyor::Worker
    batch = (1..1000).map do |i|
	({
	    testFramework: 'None',
            testName: "Test #{i}",
            fileName: "none.rb:#{i+1}",
            outcome: 'Passed', 
            durationMilliseconds: 108
	})
    end
    ::AppVeyor::Worker.tests batch
  end
end


module AppVeyor::Worker
  def self.tests info
    x = api or return
    body = JSON.generate info
    message body
    x.put '/api/tests/batch',
      body,
      'Content-Length'=>body.length.to_s,
      'Content-Type'=>'application/json'
  end
end
