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



# arr = [7, 12, 24, 87]


# p search_array(arr, 7)
# p search_array(arr, 100)

# Release 1
# Fibonacci


def fib(num)
#   i starts at 2 because in a Fibonacci sequence we start with [0,1]
#   in the array. Which means that the next number in the series would
#   be at index position 2.
#   We can include an if statement to take care the cases where num is
#   equal to a 1 or a 2.
#   But here we assume that the first two in the Fibonacci series is given
#   to us.
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




# p fib(6)
# p fib(100)


# Release 2
# Sorting an Array

# Bubble Sort

# In this sorting algorithm, we 'bubble' the element in the array that we want
# to the end of the array. We can achieve bubble sort by taking a value and comparing
# it with the previous value; if the previous value is greater than our current value,
# we swap their positions. Then we move to the next value and compare it
# with the value in the previous position. We continue doing this until we 
# reach the last position, where we then go back the the second position and we
# repeat the algorithm. This way, the element/value that we want/is greater has 
# 'bubbled' to the top.


def bubble_sort(arr)

  swapped = false
  while swapped == false
# We change swapped to true here, so our loop knows when to
# end itself
    swapped = true
# We use each_with_index since we need the position
# We can also use each_index which only returns the index
### arr.each_index do |i|
    arr.each_with_index do |value, i|
      if i == 0
      	next
# Once this condition is no longer true, which means I can
# not sort anymore, then the swapped will continue to be
# true, which will end the loop
##### elsif arr[i-1] > arr[i]
      elsif arr[i-1] > value
        arr[i-1], arr[i] = arr[i], arr[i-1]
        swapped = false
      end
    end
  end
    arr
end


# arr = [15,2,4,62,14,10,1]

# p bubble_sort(arr)