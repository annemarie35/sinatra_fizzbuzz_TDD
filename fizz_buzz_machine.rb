def fizz_buzz(chiffre)
 
  if multiple?(15, chiffre)
    "fizzbuzz"
  elsif multiple?(3, chiffre)
    "fizz"
  elsif multiple?(5, chiffre)
    "buzz"
  else
    chiffre.to_s
  end
end

def multiple?(multiple, chiffre)
  chiffre % multiple == 0
end

