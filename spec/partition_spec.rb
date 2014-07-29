require 'partition'

describe "Partition" do
	it 'should return two arrays, one for true the other for false' do
		array = (1..10).to_a
		result = array.partition {|element| element > 5 }
		expect(array.my_partition{|element| element > 5 } ).to eq result
	end
end