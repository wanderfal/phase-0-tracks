# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take each individual item from the input string
  # assign each item as a key in our list...the value is a default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

def set_list(str)
  # list = {}
  items = str.split(' ')
  # items.each do |item|
  #   list[item] = 1
  # end
  # list
  
  items.each_with_object({}) do |item, list|
    list[item] = 1
  end
end

our_list = set_list('carrots apples cereal pizza')
my_list = set_list("juice pretzels steak")

# Method to add an item to a list
# input: item name and optional quantity
# steps: 
    # Add to list
# output: Add a new item to existing list with a quantity.

def add_item(list, item, num=1)
  list[item] = num
  list
end


p add_item(my_list, 'apples')
p add_item(my_list, 'oranges', 4)

# Method to remove an item from the list
# input: The item from the list that user wants to remove
# steps:
    # Find item that user wants to remove
    # Remove item
    # Return new list
# output: Return a updated list

def delete_item(list, item)
  list.delete(item) { |x| puts "#{x} not found" }
  list
end

p delete_item(my_list, 'oranges')
p delete_item(my_list, 'pie')

# Method to update the quantity of an item
# input: The item you want to update, then the quantity you want it to be changed to
# steps:
    # First find item to be updated
    # Update quantity
    # Return updated list
# output: Return updated list, with updated quantity for specified item

def update_num(list, item, num)
  list[item] = num
  list
end

p update_num(my_list, 'apples', 4)

# Method to print a list and make it look pretty
# input: Style that user wants to use to make things pretty
# steps:
    # Print each item and quantity on new line
# output: Print pretty list

def pretty_list(list)
  puts "-------------------"
  list.each do |item, num|
    puts "You have #{num} of #{item}!"
  end
  puts "-------------------"
end

puts pretty_list(my_list)

# Release 2

another_list = {}
add_item(another_list, 'Lemonade', 2)
add_item(another_list, 'Tomatoes', 3)
add_item(another_list, 'Onions')
add_item(another_list, 'Ice Cream', 4)
p another_list
delete_item(another_list, 'Lemonade')
update_num(another_list, 'Ice Cream', 1)
p another_list
puts pretty_list(another_list)

# Release 4 Reflect
What did you learn about pseudocode from working on this challenge?
  I learned that there are many ways to approach pseudocoding.
  You generally look at a problem and pseudocode the entire thing
  before you attempt to code. However, I find that, personally, it
  was more effective to give myself a general idea of what type of
  input I will need, and the expected output from the problem. Then
  as I move through the problem, I continue to pseudocode each piece
  of the problem, and thoroughly flesh out the problem; compared to
  pseudocoding the entire thing at the beginning and possibly missing
  some elements.

What are the tradeoffs of using arrays and hashes for this challenge?
  In the case of using a data structure for a list containing an item
  and a specified quantity, hashes were perfect for this. Arrays would
  be less efficient, since we do not utilize any type of a order in the
  list.

What does a method return?
  It generally returns the last line of code in the method. Or when the
  method is prompted to before the end, such as using 'return'.

What kind of things can you pass into methods as arguments?
  Depends on the method. Some methods will take in all objects, which
  means it will take any type of argument. Some take in only strings, or
  data structures.

How can you pass information between methods?
  Assigning that information to variables that can be used throughout.

What concepts were solidified in this challenge, and what concepts are
still confusing?
  Default values and working with methods and their arguments, were
  definitely solidified during this session. My understanding between
  Arrays and Hashes had also improved significantly. I was also able to
  gain a greater understanding on how ruby handles returns and how I can
  incorporate that into my code. I did not find any concept in this session
  to be too difficult to comprehend. Some concepts did prove confusing 
  during the sessions. However, with the guide, I was able to understand
  those concepts.