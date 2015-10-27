require 'lib/racionales'
require 'test/unit'

class TestRacionales < Test::Unit::TestCase
	def setup
		@numa = Racionales.new(3,5)
		@numb = Racionales.new(5,3)
	end
	def test_simple
		assert_equal("3/5", @numa.to_s)
		assert_equal("5/3", @numb.to_s)
	end
end
