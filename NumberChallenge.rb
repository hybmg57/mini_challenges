class NumberChallenge
	def initialize (number_list)
		@number_list = number_list.to_a
		@players = []
	end
	
	def start
		turns = @number_list.size / @players.size
		for number in 1..turns
			@players.each do |player|
				player.pick @number_list.delete(@number_list.max)
			end
		end
	end

	def add_players (*player_names)
		player_names.map! { |name| Player.new name  }
		@players.concat player_names
	end

	def results
		@players.each do |player|
			puts "Name: #{player.name}"
			puts "Numbers picked: #{player.numbers.join ','}"
			puts "Total: #{player.numbers.inject{|sum,x| sum+x}}"
			puts "======================================"
		end
	end
end


class Player
	attr_reader :name, :numbers

	def initialize (name)
		@name, @numbers = name, []
	end

	def pick (number)
		@numbers << number 
	end

	def numbers
		@numbers
	end
end

challenge = NumberChallenge.new([8,6,15,3,11,12])
challenge.add_players "Jae", "Hye"
challenge.start
challenge.results
