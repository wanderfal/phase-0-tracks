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

p pretty_list(my_list)