num_hash = {}

for num in (1..50) do
  if num % 2 == 0 && num % 7 == 0
    num_hash[num] = (num * 2)
  elsif num % 2 == 0
    num_hash[num] = (num + 1)
  elsif num % 7 == 0
    num_hash[num] = (num - 1)
  else
    num_hash[num] = num
  end
end

puts num_hash
