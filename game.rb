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
		self.input = {
			holding_left: :left,
			holding_right: :right,
			holding_up: :up,
			holding_down: :down
		}
	end
	def left
		@x -=1
	end
	def right
		@x +=1
	end
	def up
		@y -=2
	end
	def down
		@y +=2
	end

end
Game.new.show