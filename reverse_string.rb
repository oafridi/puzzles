string = "alloo"

string.length/2.times do |i|
  string[i], string[string.length-i-1] = string[string.length-i-1], string[i]
end

p string


