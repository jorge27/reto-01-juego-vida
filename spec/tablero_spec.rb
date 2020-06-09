require_relative "../lib/tablero"

describe Tablero do
  describe "#tinit" do
    context "Comprobando tablero" do
      it "Llamando tablero desde archivo" do
        expect(Tablero.new.tinit).to eq(nil)
      end
    end
  end

  describe "tprint" do    
    context "Comprobando la impresión del tablero" do
      it "Probando la impresion de tablero 1x1" do
        expect(Tablero.new(5,5).tprint).to eq(0..4)
      end
    end
  end
end