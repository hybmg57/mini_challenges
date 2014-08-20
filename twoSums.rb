class TwoSums
	def initialize (listedNumbers)
		@listedNumbers = listedNumbers
	end


	def findIndices (sum)
		sum = sum.to_i
		@listedNumbers.each_with_index do |item_parent, index_parent|
			@listedNumbers.each_with_index do |item_child, index_child|
				if(@listedNumbers[index_child].to_i + @listedNumbers[index_parent].to_i == sum)
					return response = [index_child, index_parent]
				end
			end
		end
	end
end

num_check = TwoSums.new [1,2,3,4,5]
p num_check.findIndices(3)
