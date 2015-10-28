class Racionales
	attr_reader :numerador, :denominador

	def initialize(x, y)
		@numerador, @denominador = x, y
	end

	def to_s
		"#{@numerador}/#{@denominador}"
	end
	
	def suma(object)
		aux = mcm(@denominador, object.denominador)
		resultado = Racionales.new(((aux / @denominador) * @numerador)+((aux / object.denominador) * object.numerador),aux )
	end
	def resta(object)
		aux = mcm(@denominador, object.denominador)
		resultado = Racionales.new(((aux / @denominador) * @numerador)-((aux / object.denominador) * object.numerador),aux )
	end
	
	def multiplicacion(object)
		resultado= Racionales.new(@numerador * object.numerador, @denominador * object.denominador)
	end
	
	def division(object)
		resultado= Racionales.new(@numerador * object.denominador, @denominador * object.numerador)
	end
	
	def mcm(a,b)
		aux = mcd(a,b)
		(a/aux)* b
	end
	
	def mcd(a,b)
		#u, v = u.abs, v.abs
		while b != 0
			a, b = b, a%b
		end
		a
	end
end
