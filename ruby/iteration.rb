def print_x
 puts "printing before yield"
 yield(4)
 puts "printing after yield"
end

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

animals = ["cat", "dog", "mouse", "bird"]
p animals
animals.delete_if { |animal| animal == "dog"}
p animals

grades = {Joe:90, Bob:70, Josh:75, Mo:80}
p grades
grades.select!{ |name, grade| grade > 74 }
p grades

p grades
grades.select!{ |name, grade| grade == 70 }
p grades