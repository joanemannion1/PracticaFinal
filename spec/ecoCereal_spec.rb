require_relative "../lib/cultivos/ecoCereal"

RSpec.describe Cultivos do
        context EcoCereal do
            before (:each) do
                        @c1 = EcoCereal.new("Avena", 0.3, 12, 0.7, 0.5, "corto", "o", 380, 45, 0.94, 0.92, 0.75, 83, 20,0.53)
                        @c2 = EcoCereal.new("Arroz", 0.3, 11, 0.8, 0.3, "largo", "v", 315, 42, 0.91, 0.93, 0.85, 96, 17,0.59)
                        @c3 = EcoCereal.new("Cebada", 0.1, 8, 0.3, 0.2, "corto", "o", 200, 40, 0.93, 0.99, 0.81, 90, 76,0.61)
                        @EcoCereales = [@c1,@c2,@c3]

            end
            context "Crear un EcoCereal" do
                it "instanciar una EcoCereal" do
                        expect(@c2).not_to eq(nil)
                end

                it "Obtener nombre de la EcoCereal" do
                        expect(@c1.nombre).to eq("Avena")
                end

                it "Obtener una cadena con la informacion de la EcoCereal" do
                        expect(@c1.to_s).to eq("EcoCereal ->Nombre: Avena, Emision de gases: 0.3, Terreno: 12, Precio: 0.7, Coste: 0.5, tipo: corto, estacion: o")
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

                it "Obtener el coste de venta" do
                        expect(@c1.coste).to eq(0.5)
                end

                                it "Obtener tipo de EcoCereal" do
                                        expect(@c1.tipo).to eq("corto")
                                end

                                it "Obtener estacion aconsejable" do
                                        expect(@c1.estacion).to eq("o")
                                end

                                it "Obtener el porcentaje de minerales totales" do
                                        expect(@c1.minerales).to eq(0.59)
                                end

                                it "Sea clase cultivo" do
                                        expect(@c1).to be_a(Cultivo)
                                end

                                it "Sea clase EcoCereal" do
                                        expect(@c1).to be_instance_of(EcoCereal)
                                end

                                it "No sea una cadena" do
                                        expect(@c1).not_to be_instance_of(String)
                                end

                                it "No sea un número" do
                            expect(@c1).not_to be_instance_of(Numeric)
                        end
                    end

                    context "Calculos de la clase EcoCereal" do

                                it "Calcular la densidad" do
                                        expect (@c1.densidad).should be_within(0.1).of(263.6)
                                end

                                it "Calcular la planta" do
                                        expect (@c1.planta).should be_within(0.01).of(415.0)
                                end

                                it "EcoCereal es comparable densidad" do
                                        expect(@c2 < @c1).to eq(false)
                                end

                                it "EcoCereal es comparable precio de coste y venta" do
                                        expect(@c1 > @c3).to eq(true) 
                                end
                                
                                it "Calcular que EcoCereal tiene el coste de produccion y el precio de venta mas altos y sus valores." do
                                        expect(@EcoCereales.max).to eq(@c2)
                                end

                                it "Calcular que EcoCereal tiene la densidad mas baja y su valor." do
                                        expect(@EcoCereales.min_by{ |x| x.ds}).to eq(@c2)
                                end

                                it "Calcular para todos los EcoCereales de grano corto y estacion de siembra en otono el numero de plantas que se logran en una hectarea." do 
                                        expect(@EcoCereales.find_all {|p| p.tipo == "corto" && p.estacion == "o"}).to eq([@c1,@c3])
                                end
                        end
                context "Programación orientada a objetos. Poliformismo. Modificación" do
            it "Se debe poder esperar que una instancia de clase EcoCereal sea un objeto" do
                expect(@c1.is_a?Object).to eq(true)
            end

            it "Se debe poder esperar que una instancia de clase EcoCereal sea un objeto básico" do
                expect(@c1.is_a?BasicObject).to eq(true)
            end

            it "Se debe poder esperar que una instancia de clase EcoCereal no sea un string" do
                expect(@c1.is_a?String).to eq(false)
            end

            it "Se debe poder esperar que una instancia de clase EcoCereal no sea un numerico" do
                expect(@c1.is_a?Numeric).to eq(false)
            end

            it "Se debe poder enumerar una EcoCereal" do 
                expect(@c1.respond_to?(:each)).to eq(true)
            end

            it "Se debe poder enumerar una EcoCereal" do 
                expect(@c1.relacion).to eq(0)
            end
        end

        end
end
