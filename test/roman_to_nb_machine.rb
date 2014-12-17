require 'minitest/autorun'
	
def roman_to_number(roman)
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

class RomanToNumberTest < MiniTest::Unit::TestCase
	def test_I_vaut_1
		assert_equal 1, roman_to_number("I")
	end

	def test_V_vaut_5
		assert_equal 5, roman_to_number("V")
	end

	def test_X_vaut_10
		assert_equal 10, roman_to_number("X")
	end

	def test_II_vaut_2
		assert_equal 2, roman_to_number("II")
	end

	def test_VI_vaut_6
		assert_equal 6, roman_to_number("VI")
	end

	def test_VII_vaut_7
		assert_equal 7, roman_to_number("VII")
	end

	def test_IV_vaut_4
		assert_equal 4, roman_to_number("IV")
	end

	def test_XVIII_vaut_18
		assert_equal 18, roman_to_number("XVIII")
	end

	def test_IX_vaut_9
		assert_equal 9, roman_to_number("IX")
	end
	def test_L_vaut_50
		assert_equal 50, roman_to_number("L")
	end  
	def test_LXXIX_vaut_79
		assert_equal 79, roman_to_number("LXXIX")
	end 
	def test_CLVII_vaut_157
		assert_equal 157, roman_to_number("CLVII")
	end  
 	def test_MV_vaut_1005
		assert_equal 1005, roman_to_number("MV")
	end
	def test_MCMXXXII_vaut_1932
		assert_equal 1932, roman_to_number("MCMXXXII")
	end
	def test_90_vaut_XC
		assert_equal 90, roman_to_number("XC")
	end
	def test_99_vaut_XCIX
		assert_equal 99, roman_to_number("XCIX")
	end
end