class Array
	def my_partition
		true_array = []
		false_array = []
		self.each{ |element| (yield element)? true_array.push(element) : false_array.push(element) }
		[true_array, false_array]
	end
end