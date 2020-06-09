require_relative "../lib/game"

describe "Game" do 
	describe "#gexec" do
		context "Probando la ejecución del programa" do
			it "Ejecutaando escenario 5x5" do
				gam = Game.new("prueba1.txt")
				expect(gam.gexec).to eq([[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil],[1,1,nil,nil,nil],[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil]])
				expect(gam.gexec).to eq([[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil],[nil,nil,nil,nil,nil]])
			end
			it "Ejecutando escenario 3x3" do
				game = Game.new("prueba2.txt")
				expect(game.gexec).to eq([[nil,1,nil],[nil,1,nil],[nil,1,nil]])
				expect(game.gexec).to eq([[nil,nil,nil],[1,1,1],[nil,nil,nil]])
			end
		end
	end
end