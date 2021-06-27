
require_relative "../lib/cultivos/cultivo"

include RSpec

RSpec.describe Cultivo do
	context Cultivo do
		before (:each) do
			@c1 =  Cultivo.new('Cultivo1', 0.3, 12, 0.7, 0.5)
		end
		context "Creacion de un cultivo" do
			it "Instanciar un cultivo" do
				expect(@c1).not_to eq(nil)
			end
			
			it "Obtener nombre de un cultivo" do
				expect(@c1.nombre).to eq("Cultivo1")
			end

			it "Se obtiene una cadena con la informacion del cultivo" do
				expect(@c1.to_s).to eq("Nombre: Cultivo1, Emision de gases: 0.3, Terreno: 12, Precio: 0.7, Coste: 0.5")
			end
			
			it "Obtener las emisiones de gases de efecto invernadero" do
				expect(@c1.gas).to eq(0.3)
			end

			it "Obtener el terreno utilizado" do
                                expect(@c1.terreno).to eq(12)
                        end

			it "Obtener el precio de venta" do
                                expect(@c1.precio).to eq(0.7)
                        end

			it "Obtener el coste de produccion" do
                                expect(@c1.coste).to eq(0.5)
                        end
		end
	end
end


