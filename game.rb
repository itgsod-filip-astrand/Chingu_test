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
		@speed
		self.input = {
			holding_left: :left,
			holding_right: :right,
			holding_up: :up,
			holding_down: :down
		}
	end
	def left
		unless @x - 28 <= 0
			@x -= @speed
		end
	end
	def right
		unless @x +28 <= 800
			@x += @speed
		end
	end
	def up
		unless @y - 28 <= 0
			@y -= @speed
		end
	end
	def down
		unless @y + 28 <= 0
			@y += @speed
		end
end

end
Game.new.show