cases = gets.strip.to_i

cases.times do
  n = gets.strip  
  n_int = n.to_i
  divisible_digits = 0
  n.each_char do |chr|
    next if chr.to_i == 0
    divisible_digits += 1 if n_int % chr.to_i == 0
  end
  puts divisible_digits
end