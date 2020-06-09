require_relative "tablero"

class Game < Tablero
	def initialize(file = "escenario.txt")
		self.tinit(file)
	end
	
	def gexec
		tablero = Array.new(@ren) {Array.new(@col){nil}}
		for i in 0..@ren-1
			for j in 0..@col-1
				flag = 0

				if (i>0) && (j>0)
					flag += @tablero[i-1][j-1] ? 1 : 0
				end
				if (i>0) 
					flag += @tablero[i-1][j] ? 1 : 0
				end
				if (i>0) && (j<@col-1)
					flag += @tablero[i-1][j+1] ? 1 : 0
				end
				if (j>0)
					flag += @tablero[i][j-1] ? 1 : 0
				end
				if (j<@col-1)
					flag += @tablero[i][j+1] ? 1 : 0
				end
				if (i<@ren-1) && (j>0)
					flag += @tablero[i+1][j-1] ? 1 : 0
				end
				if (i<@ren-1)
					flag += @tablero[i+1][j] ? 1 : 0
				end
				if (i<@ren-1) && (j<@col-1)
					flag += @tablero[i+1][j+1] ? 1 : 0
				end

				if ((@tablero[i][j]==1) && (flag==2 || flag==3))
					tablero[i][j] = 1 
				else
					tablero[i][j] = nil
				end
				if ((@tablero[i][j]==nil) && flag==3)
					tablero[i][j] = 1 
				end
			end
		end
		@tablero = tablero.clone
		
	end

	def game
		while true
			self.tprint
			self.gexec
			sleep(1)
		end
	end


end