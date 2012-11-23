require 'chingu'

class Game < Chingu::Window

	#Constuctor
	def initialize
		super
		self.input = {esc: :exit}
		@player = Player.create
	end


end

class player < Chingu::GameObject
	
	# Meta-constructor
	def setup
		@x, @y = 350, 400
		@image = Gosu::Image["spaceship.png"]
	end

end
Game.new.show