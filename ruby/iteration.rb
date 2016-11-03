####### Release 0

def print_x
 puts "printing before yield"
 yield(4)
 puts "printing after yield"
end

####### Release 1

print_x {|x| puts x*2}

names = ['john', 'joe', 'bob', 'stan', 'jeff', 'henry']
cars = {lambo:"red", porsche:"blue", maserati:"yellow"}

p names
names.each do |name|
	puts "Your name is #{name}?"
end
p names

p names
puts "Let me capitalize your name for you."

names.map! do |name|
	name.capitalize
end
p names

p cars
cars.each do |car, color|
	puts "I love that #{car} in #{color}!"
end
p cars

####### Release 2

puts "delete_if"
animals = ["cat", "dog", "mouse", "bird"]
p animals
p animals.delete_if { |animal| animal == "dog"}
p animals

puts "select!"
grades = {Joe:90, Bob:70, Josh:75, Mo:80}
p grades
p grades.select!{ |name, grade| grade > 74 }
p grades

puts "keep_if"
grades = {Joe:90, Bob:70, Josh:75, Mo:80}
p grades
p grades.keep_if { |name, grade| grade >75 }
p grades

# #drop_while is the reverse of #take_while
p "take_while"
numbers = [1,2,3,10,4,5,6]
p numbers
p numbers.take_while { |number| number<10 }
p numbers