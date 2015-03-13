def find_smallest_two(arr)
  return arr if arr.length < 2
  smallest_two = []

  smallest = arr[0]
  second_smallest = arr[1]

  arr[2..-1].each do |num|
    if second_smallest < smallest 
      second_smallest, smallest = smallest, second_smallest
    end

    if num < smallest
      second_smallest = smallest
      smallest = num
    elsif num < second_smallest
      second_smallest = num
    end
  end
  
  smallest_two.push(smallest, second_smallest)  
end

arr = [1,5,3,6,9]
arr1 = [10,5,3,6,9]
one_el = [5]
two_els = [1,5]
empty = []

p find_smallest_two(arr) == [1,3]
p find_smallest_two(arr1) == [3,5]
p find_smallest_two(two_els) == [1,5]
p find_smallest_two(one_el) == [5]
p find_smallest_two(empty) == []

# Time: O(n), Space: O(1)