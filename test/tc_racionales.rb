require 'lib/racionales'
require 'test/unit'

class TestRacionales < Test::Unit::TestCase
	def setup
		@numa = Racionales.new(3,5)
		@numb = Racionales.new(5,3)
		@numc = Racionales.new(3,4)
		@numd = Racionales.new(2,2)
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
		assert_equal("7/4", @numc.suma(@numd).to_s)
		assert_equal("34/15", @numa.suma(@numb).to_s)
		
	end
	
	def test_resta
		assert_equal("-1/4", @numc.resta(@numd).to_s)
		assert_equal("-16/15", @numa.resta(@numb).to_s)
		
	end
end
