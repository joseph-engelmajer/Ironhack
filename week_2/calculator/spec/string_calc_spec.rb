zrequire_relative("../lib/string_calc.rb")

RSpec.describe StringCalc do 
	let :the_calculator do
		StringCalc.new
	end
	it "returns 0 for empty string" do
		#test code (assertion)
		expect(the_calculator.add("")).to eq(0)
	end

	it "returns the number for a single number" do
		#test code (assertion)
		expect(the_calculator.add("9")).to eq(9)
		expect(the_calculator.add("6")).to eq(6)
	end

	it "returns the number added up for two numbers" do
		#test code (assertion)
		expect(the_calculator.add("7,5")).to eq(12)
		expect(the_calculator.add("3,4")).to eq(7)
	end
end