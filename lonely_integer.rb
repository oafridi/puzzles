#!/bin/ruby
def lonelyinteger(array) 
  frequency = {}
  array.each do |num| 
    if frequency[num]
      frequency[num] += 1
    else
        frequency[num] = 1
    end
  end

  lonely_ints = frequency.select { |k, v| k if v == 1 }
  lonely_ints.keys.first
end
a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)
