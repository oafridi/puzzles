def  insertionSort( ar) 
    value_to_insert = ar.last    
    ar.reverse!
    inserted = false
    
    ar.each_with_index do |v,i|
        next if i == 0

        if v > value_to_insert
            ar[i-1] = ar[i]            
        elsif v <= value_to_insert
            ar[i-1] = value_to_insert
            puts ar.reverse.join(' ')       
            inserted = true
            break        
        end  
        puts ar.reverse.join(' ')
    end
    if !inserted
        ar[-1] = value_to_insert 
        puts ar.reverse.join(' ')
    end
end
count = 5
ar = "4 6 8 3".strip.split.map {|i| i.to_i}

insertionSort( ar )

# v > ins
# v < ins
# v == ins

# ar = "2 4 6 8 3"
# ar1 = "2 3 4 6 8 3"