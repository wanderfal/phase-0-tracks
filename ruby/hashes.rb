# Release 3
=begin
	First we ask for their information, such as a name, age, number of children,
	and a few other questions that have some relation to interior design.
	We then show them their choices and ask them if they want to make any changes.
	Finally we display their final choices.
	
=end


design = {}

puts "What is your name?"
design[:name] = gets.chomp

puts "What is your age?"
design[:age] = gets.chomp.to_i

puts "How many children will be living here?"
design[:children] = gets.chomp.to_i

puts "What kind of a Decor Theme would you like?"
a = "Modern"
b = "Victorian"
c = "Secret Lair"
puts "Choice A, a modern theme."
puts "Choice B, a victorian theme."
puts "or would you like choice C, a secret lair theme?"
design[:theme] = gets.chomp.downcase





# interior_design = {
# 					name: name,
# 					age: age.to_i,
# 					children: children.to_i,
# 					decor: theme,
# 					color: color,
# 					material: material,
# }

p interior_design

name = "Kane Lee"
color = "Black"

p interior_design