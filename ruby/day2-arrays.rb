
# // Iterate over the array printing out for numbers at a time using only 'each'
arr = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16]
i=0
arr.each do |variable|
	puts "#{arr[i, 4]}" if i % 4 == 0
	i = i + 1
end

# Using 'each_slice' from Enumerable
arr.each_slice(3) {|a| puts a.to_s}

