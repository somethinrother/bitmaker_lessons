def number_suffixer(number)

  if number.digits.first    == 1 && number.digits.first(2).join != "11"
    puts number.to_s + "st"
  elsif number.digits.first == 2 && number.digits.first(2).join != "21"
    puts number.to_s + "nd"
  elsif number.digits.first == 3 && number.digits.first(2).join != "31"
    puts number.to_s + "rd"
  else
    puts number.to_s + "th"
  end
end

for i in (1..200) do
  number_suffixer(i)
end
