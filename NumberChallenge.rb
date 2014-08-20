class NumberChallenge
	def initialize (number_list)
		@number_list = number_list.to_a
		@players = []
	end
	
	def start
		# @number_list.each_with_index do |number, index|
		turns = @number_list.size / @players.size
		for number in 1..turns
			@players.each do |player|
				player.pick @number_list.delete(@number_list.max)
				p player
			end
		end
	end

	def add_players (*player_names)
		player_names.map! { |name| Player.new name  }
		@players.concat player_names
	end
end


class Player
	def initialize (name)
		@name = name
		@numbers = []
	end

	def pick (number)
		@numbers <<  number 
	end

	def numbers
		@numbers
	end
end

challenge = NumberChallenge.new([8,6,15,3,11,12])
challenge.add_players "Jae", "Hye"
challenge.start
