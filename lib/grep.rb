class Array

	def my_grep(pattern, &block)
		self.select do | element |
			element if pattern === element
		end
	end

end