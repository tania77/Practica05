class numeros_fraccionarios
	attr_reader :numerador, :denominador
	def inicializate (x, y)
		@numerador, @denominador = x, y
	end

	def to_s
		"#{numerador}/#{denominador}"
	end
end
