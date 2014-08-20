class TwoSums:
	
	listNumbers = []	

	""" input array of allowed numbers """
	def __init__(self, listNumbers: list) -> list:
		self.listNumbers = listNumbers
	
	def findIndices(self, sum: int) -> list:
		for index_parent, item_parent in enumerate(self.listNumbers):
			for index_child, item_child in enumerate(self.listNumbers):
				if(self.listNumbers[index_child] + self.listNumbers[index_parent] == sum):
					return [index_child, index_parent]

numbers = TwoSums([1,2,3,4,5])
print(numbers.findIndices(3))

