class Racionales
	attr_reader :numerador, :denominador

	def initialize(x, y)
		@numerador, @denominador = x, y
	end

	def to_s
		"#{@numerador}/#{@denominador}"
	end
end
