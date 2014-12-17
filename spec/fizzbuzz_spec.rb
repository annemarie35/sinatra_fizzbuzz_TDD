require './spec/spec_helper'

describe "fizz_buzz" do 

	it "True donne true" do
		expect(true).to eq(true)
	end
	it "3 donne fizz" do
		expect(fizz_buzz(3)).to eq("fizz")
	end
	it "5 donne buzz" do
		expect(fizz_buzz(5)).to eq("buzz")
	end
	it "15 donne fizz" do
		expect(fizz_buzz(15)).to eq("fizzbuzz")
	end

end