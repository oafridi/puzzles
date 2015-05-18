@alphabet = {}
('a'..'z').each_with_index {|k,v| @alphabet[k] = v}

def calc_num_operations(word)
  num_operations = 0
  (word.length / 2).times do |i|        
    num_operations += (@alphabet[word[i]] - @alphabet[word[word.length-1-i]]).abs
  end

  num_operations
end

cases = gets.to_i

cases.times do
  word = gets.chomp  
  puts calc_num_operations(word)
end