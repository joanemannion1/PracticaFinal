require_relative "cultivo"

class Cereal < Cultivo
	include Comparable
	attr_reader :tipo, :estacion, :densidad, :planta, :npmc, :pmg, :pg, :pu, :gl, :pml, :ds

	def initialize(n,g,t,p,c,tip,e, npmc, pmg, pg, pu, gl, pml, ds)
		super(n,g,t,p,c)
		@tipo = tip
		@estacion = e
		@npmc = npmc
		@pmg = pmg
		@pg = pg
		@pu = pu
		@gl = gl
		@pml = pml
		@ds = ds
	end
	
	def to_s()
		s = "Cereal ->"
		s << super.to_s
		s << ", tipo: #{@tipo}, estacion: #{@estacion}"
		s
	end

    #Método para que sea enumerable la clase Fruta
    def each
        yield tipo
        yield estacion
        yield npmc
        yield pmg
        yield pg
        yield pu
        yield gl
        yield pml
        yield ds
    end

	def densidad()
		return (@npmc * (@pmg / 100.0))/ (@pg * @pu * @gl)

	end

	def planta()
		return ((@pml * 100.0) / @ds)
	end

    def relacion()
       @terreno/@gas
    end

	def <=> other 
		[@precio,@coste] <=> [other.precio, other.coste]
	end
end


		
