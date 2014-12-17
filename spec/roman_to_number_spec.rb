require './spec/spec_helper'

def romanToNumber(roman)
	romans = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "M" => 1000}

	romanlength = roman.length
	return romans[roman] if romanlength == 1 

	roman_inverse = roman.split('').reverse
	number = romans[roman_inverse[0]]
	
	roman_inverse.each_with_index do |letter, indice| 
	next_letter = roman_inverse[indice + 1] 

		if romans[next_letter] == nil 
				number

		elsif romans[next_letter] < romans[letter]
			number -= romans[next_letter]
			
		elsif romans[next_letter] >= romans[letter]
			number += romans[next_letter]
		end
	 
   	end 
	number

end


describe "RomanToNumber" do 
	
	it " I donne 1" do
		expect(romanToNumber("I")).to equal (1)
	end

	it 'V donne 5' do
		expect(romanToNumber("V")).to equal (5)
	end

	it 'II donne 2' do
		expect(romanToNumber("II")).to equal (2)
	end


	it 'III donne 3' do
		expect(romanToNumber("III")).to equal (3)
	end

	it "X donne 10" do
		expect(romanToNumber("X")).to equal (10)
	end

	it "Iv donne 4" do
		expect(romanToNumber("IV")).to equal (4)
	end
		it "IX donne 9" do
		expect(romanToNumber("IX")).to equal (9)
	end
		it "XX donne 20" do
		expect(romanToNumber("XX")).to equal (20)
	end
		it "XVIII donne 18" do
		expect(romanToNumber("XVIII")).to equal (18)
	end
		it "L donne 50" do
		expect(romanToNumber("L")).to equal (50)
	end
		it "C donne 100" do
		expect(romanToNumber("C")).to equal (100)
	end
		it "M donne 1000" do
		expect(romanToNumber("M")).to equal (1000)
	end
		it "LXXIX donne 79" do
		expect(romanToNumber("LXXIX")).to equal (79)
	end
			it "CLVII donne 157" do
		expect(romanToNumber("CLVII")).to equal (157)
	end
			it "MV donne 1005" do
		expect(romanToNumber("MV")).to equal (1005)
	end
			it "MCMXXXII donne 1932" do
		expect(romanToNumber("MCMXXXII")).to equal (1932)
	end
			it "XC donne 90" do
		expect(romanToNumber("XC")).to equal (90)
	end
			it "XCIX donne 99" do
		expect(romanToNumber("XCIX")).to equal (99)
	end

end


