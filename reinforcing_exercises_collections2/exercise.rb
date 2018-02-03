digits = ['1','2','3','4','5','6','7','8','9']
en = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
fr = ['un','deux','trois','quatre','cinq','six','sept','huit','neuf']

digit_hash = {}

digits.map do |digit|
  digit_hash[digit] = {french: "#{fr[digit.to_i - 1]}", english: "#{en[digit.to_i - 1]}"}
end

puts digit_hash.inspect
