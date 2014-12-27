def roman_to_nb(roman)

	romans = {"I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "M" => 1000}
	roman = roman.to_s

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