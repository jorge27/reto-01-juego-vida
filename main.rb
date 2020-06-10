require_relative "lib/game"

game = Game.new("prueba1.txt")

hilo = Thread.start{game.game}
gets.chomp
Thread.kill(hilo)