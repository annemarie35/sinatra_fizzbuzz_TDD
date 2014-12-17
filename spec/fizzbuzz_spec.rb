require './spec/spec_helper'

describe "fizz_buzz" do 

	it "True donne true" do
		expect(true).to equal (true)
	end
	it "3 donne fizz" do
		expect(fizz_buzz(3)).to equal ("fizz")
	end

end