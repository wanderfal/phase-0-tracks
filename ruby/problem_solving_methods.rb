# Release 0

def search_array(arr, num)
	index = 0
	if arr.include? num
		arr.each do |num2|
			if num2 != num
				index += 1
			else
				return index
			end
		end
	else
		nil
	end
end



arr = [7, 12, 24, 87]


p search_array(arr, 7)
p search_array(arr, 100)

# Release 1
# Fibonacci

# def sum(x, y)
# 	x + y
# end

# x = output[num-2]
# y = output[num-3]
# Output should be an array.
# To verify, check last number in array.
# def fib(num)
# 	i = 2
# 	sum = [0,1]
# 	output = []
# 	while i < num
# 		if i == 0 || i == 1
# 			output << i
# 			i += 1
# 		else
# 			x = output[num-2]
# 			y = output[num-3]
# 			output << sum(x, y)
# 			i += 1
# 		end
# 	end
# 	output
# 	p output[num-1]
# end

def fib(num)
#   i starts at 2 because in a Fibonacci sequence we start with [0,1]
#   in the array. Which means that the next number in the series would
#   be at index position 2.
	i = 2
	output = [0,1]
	while i < num
		sum = output[i-1] + output[i-2]
		output << sum
		i += 1
	end
	p output
	output.last
end




# def fib(n, cache = {})
#   if n == 0 || n == 1
#   return n
#   end
#   cache[n] ||= fib(n-1, cache) + fib(n-2, cache)
# end
# fib 14
# # => 377
# fib 24
# # => 46368
# fib 124
# # => 36726740705505779255899443

p fib(6)
# => [0,1,1,2,3,5]
# => [0,1,2,3,4,5]
p fib(100)