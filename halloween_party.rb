cases = gets.strip.to_i
cases.times do
  k = gets.strip.to_i  
  if k.even?
    puts k/2 * k/2
  else
    puts k/2 * (k/2 + 1)
  end
end