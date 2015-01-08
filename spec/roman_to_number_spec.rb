require './spec/spec_helper'

describe "roman_to_nb" do 
	
	it " I donne 1" do
		expect(roman_to_nb("I")).to equal (1)
	end

	it 'V donne 5' do
		expect(roman_to_nb("V")).to equal (5)
	end

	it 'II donne 2' do
		expect(roman_to_nb("II")).to equal (2)
	end

	it 'III donne 3' do
		expect(roman_to_nb("III")).to equal (3)
	end

	it "X donne 10" do
		expect(roman_to_nb("X")).to equal (10)
	end

	it "Iv donne 4" do
		expect(roman_to_nb("IV")).to equal (4)
	end
	it "IX donne 9" do
		expect(roman_to_nb("IX")).to equal (9)
	end
	it "XX donne 20" do
		expect(roman_to_nb("XX")).to equal (20)
	end
	it "XVIII donne 18" do
		expect(roman_to_nb("XVIII")).to equal (18)
	end
	it "L donne 50" do
		expect(roman_to_nb("L")).to equal (50)
	end
	it "C donne 100" do
		expect(roman_to_nb("C")).to equal (100)
	end
	it "M donne 1000" do
		expect(roman_to_nb("M")).to equal (1000)
	end
	it "LXXIX donne 79" do
		expect(roman_to_nb("LXXIX")).to equal (79)
	end
	it "CLVII donne 157" do
		expect(roman_to_nb("CLVII")).to equal (157)
	end
	it "MV donne 1005" do
		expect(roman_to_nb("MV")).to equal (1005)
	end
	it "MCMXXXII donne 1932" do
		expect(roman_to_nb("MCMXXXII")).to equal (1932)
	end
	it "XC donne 90" do
		expect(roman_to_nb("XC")).to equal (90)
	end
	it "XCIX donne 99" do
		expect(roman_to_nb("XCIX")).to equal (99)
	end
	it "CDIV donne 404" do
		expect(roman_to_nb("CDIV")).to equal (404)
	end
end


