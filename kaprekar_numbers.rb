def is_kaprekar?(num)
	d = num.to_s.length	
	square = (num ** 2).to_s

	l_length = square.length - d
	
	if l_length != 0
		l = square[0..l_length-1].to_i
	else
		l = 0
	end
	r = square[-d..-1].to_i
	r + l == num
end

# p = gets.chomp.to_i
# q = gets.chomp.to_i

p = 1 
q =100

kaprekar_numbers = []

(p..q).each do |num|
	if is_kaprekar? num
		kaprekar_numbers.push(num)	
	end	
end

unless kaprekar_numbers.empty?
	puts kaprekar_numbers.join(' ')
else
	puts "INVALID RANGE"
end