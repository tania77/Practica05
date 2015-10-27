class Racionales
	attr_reader :numerador, :denominador

	def inicializate(x, y)
		@numerador, @denominador = x, y
	end

	def to_s
		"#{numerador}/#{denominador}"
	end
	def mostrar
		puts "@numerador / @denominador"
	end
end