class Tablero
	def initialize(x = 0,y = 0)
		@ren = x
		@col = y
		@tablero = Array.new(@ren) {Array.new(@col) {nil}}
		return nil
	end

	def tinit(file = "escenario.txt")
		begin
			File.open(file, "r") { |io|  
				lin = io.gets.split("\t")
				@ren = Integer(lin[0])
				@col = Integer(lin[1])
				@tablero = Array.new(@ren) {Array.new(@col) {nil}}
				while lin = io.gets
					lin = lin.split("\t")
					@tablero[Integer(lin[0])][Integer(lin[1])] = 1
				end
			}
			return nil
		rescue Exception => e
			puts "Eroror"
			@ren = 0
			@col = 0
			@tablero = Array.new(@ren) {Array.new(@col) {nil}}
			print e
			#raise  
		end
	end

	def tprint
		system "clear"
		for i in 0..@ren-1
			for j in 0..@col-1
				print (@tablero[i][j]) ? '*' : ' '
			end
			print "\n"
		end
	end
	
	private
	:ren
	:col
	:tablero
end