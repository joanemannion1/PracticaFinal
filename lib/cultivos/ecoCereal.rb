require_relative "cultivo"
require_relative "cereal"
o
class EcoCereal < Cereal
	include Comparable
	attr_reader :minerales
	def initialize(n,g,t,p,c,tip,e, npmc, pmg, pg, pu, gl, pml, ds, minerales)
		super(n,g,t,p,c,tip,e, npmc, pmg, pg, pu, gl, pml, ds)
		@minerales = minerales
	end
	
	def to_s()
		s = "Cereal ->"
		s << super.to_s
		s << ", minerales: #{@minerales}"
		s
	end
end


		
