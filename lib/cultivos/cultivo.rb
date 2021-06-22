class Cultivo
	attr_reader :nombre, :gas, :terreno, :precio, :coste

	def initialize(n,g,t,p,c)
		@nombre = n
		@gas = g
		@terreno = t
		@precio = p
		@coste = c
	end
	
	def to_s()
		"Nombre: #{@nombre}, Emision de gases: #{@gas}, Terreno: #{@terreno}, Precio: #{@precio}, Coste: #{@coste}"
	end

    def relacion()
       @terreno/@gas
    end

end
