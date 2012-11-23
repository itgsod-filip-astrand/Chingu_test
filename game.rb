require 'chingu'

class Game < Chingu::Window

	#Constuctor
	def initialize
		super
		self.input = {esc: :exit}
	end


end

Game.new.show