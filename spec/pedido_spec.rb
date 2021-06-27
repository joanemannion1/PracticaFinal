require_relative "../lib/cultivos/pedidos"

RSpec.describe Cultivos do
    before :each do
        @pedido = Pedido.new("Mercado de Nuestra Señora de Africa") do 
        @c1 = Cereal.new("Avena", 0.3, 12, 0.7, 0.5, "corto", "o", 380, 45, 0.94, 0.92, 0.75, 83, 20)
        @c2 = Cereal.new("Arroz", 0.3, 11, 0.8, 0.3, "largo", "v", 315, 42, 0.91, 0.93, 0.85, 96, 17)
        @c3 = Cereal.new("Cebada", 0.1, 8, 0.3, 0.2, "corto", "o", 200, 40, 0.93, 0.99, 0.81, 90, 76)

        cantidad "100", c1
        cantidad "50", c2
        cantidad "20", c3
        especificacion "Tiempo de avena un año"
        especificacion "Tiempo cebada un mes"
        especificacion "el pedido centeno puntual"
        end 
    end

    describe Pedido do
        it "Se debe poder instanciar un pedido de frutas" do
            expect(@pedido).not_to be(nil)
        end

        it "El pedido debe contar con un nombre como atributo" do
            expect(@pedido.nombre).not_to be(nil)
        end  

        it "El pedido debe contar con una lista de productos como atributo" do
            expect(@pedido.cereales).not_to be(nil)
        end

        it "El pedido debe contar con una lista de especificaciones como atributo" do
            expect(@pedido.especificaciones).not_to be(nil)
        end 
    end
end
