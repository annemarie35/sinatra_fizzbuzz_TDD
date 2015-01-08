def roman_to_nb(roman)

	romans = { "I" => 1, "V" => 5, "X" => 10, "L" => 50, "C" => 100, "D" => 500, "M" => 1000 }

# if roman est un integer
# renvoie le message Veuillez entrer un chiffre romain svp
# elsif roman contient des lettres qui ne sont pas dans le dictionnaire romans
# affiche veuillez entrer des chiffres romains comme I, V etc et ça bloque 
# elsif

		roman_inverse = roman.to_s.split('').reverse
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

# end

end