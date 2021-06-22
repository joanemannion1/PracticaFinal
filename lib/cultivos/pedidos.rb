require_relative "cereal"

class Pedido
	attr_accessor :nombre, :cereales, :cantidades, :especificaciones

	def initialize(nombre, &block)
		self.nombre = nombre
		self.cereales = []
		self.cantidades = []
		self.especificaciones = []

		if block_given?  
      			if block.arity == 1
        			yield self
      			else
       				instance_eval(&block) 
      			end
    		end
	end

	def cantidad(cantidad, cereal)
		@cantidades << cantidad
		@cereales << cereal
	end

	def especificacion(e)
		@especificaciones << e
	end

	def to_s
    		output = nombre
    		output << "\n#{'=' * nombre.size}\n\n"
    		output << "Productos: \n"
		@cantidades.each_with_index do |cantidad, index|
			output << "[#{cantidad} kilos] (#{cereales[index].to_s}) \n"
		end
		output << "Especificaciones: \n"
    		@especificaciones.each_with_index do |especificacion, index|
      			output << "#{index + 1}) #{especificacion}\n"
    		end

    	output
 	 end

end

señora = Pedido.new("Mercado de Nuestra Señora de Africa") do 
	c1 = Cereal.new("Avena", 0.3, 12, 0.7, 0.5, "corto", "o", 380, 45, 0.94, 0.92, 0.75, 83, 20)
	c2 = Cereal.new("Arroz", 0.3, 11, 0.8, 0.3, "largo", "v", 315, 42, 0.91, 0.93, 0.85, 96, 17)
	c3 = Cereal.new("Cebada", 0.1, 8, 0.3, 0.2, "corto", "o", 200, 40, 0.93, 0.99, 0.81, 90, 76)

	cantidad "100", c1
	cantidad "50", c2
	cantidad "20", c3
	especificacion "Tiempo de avena un año"
	especificacion "Tiempo cebada un mes"
	especificacion "el pedido centeno puntual"

end

puts señora
