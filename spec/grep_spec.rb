require 'grep'

describe Array do
	it 'returns an array of every element in enum for which Pattern === element' do
	expect([1, 2, 3, 4, 5].my_grep(1)).to eq([1])
	expect([1, 2, 3, 4, 5].my_grep(1..5)).to eq([1, 2, 3, 4, 5])
	expect([1, 2, 3, 4, 5].my_grep(1..3)).to eq([1, 2, 3])
	end

	it 'if a block is supplied, it returns an array' do
		expect([1, 2, 3, 4, 5].grep(1) {|e| e * 2}).to eq([2])
		expect([1, 2, 3, 4, 5].grep(1..3) {|e| e * 2}).to eq([2, 4, 6])
	end

end