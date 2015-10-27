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
	
	def test_multiplicacion
		assert_equal("15/15", @numa.multiplicacion(@numb).to_s)
	end
	
	def test_division
		assert_equal("9/25", @numa.division(@numb).to_s)
	end
	
	def test_suma
		assert_equal("34/15", @numa.suma(@numb).to_s)
	end
	
	def test_resta
		assert_equal("-11/15", @numa.resta(@numb).to_s)
	end
end
