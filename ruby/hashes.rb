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

puts "What kind of a Decor Theme would you like? A, B, or C?"
# a = "Modern"
# b = "Victorian"
# c = "Secret Lair"
decor = {
					a: "Modern",
					b: "Victorian",
					c: "Secret Lair",
}
# a = "Modern"
# b = "Victorian"
# c = "Secret Lair"
letter = gets.chomp.downcase.to_sym
design[:decor] = {letter => decor[letter] } 

puts "What is your favorite color?"
design[:color] = gets.chomp

puts "What type of material would you like?"
design[:material] = gets.chomp

puts "Would you like to child-proof your furniture?Yes/No"
design[:child_proof] = gets.chomp.downcase





# design = {
# 					name: name,
# 					age: age.to_i,
# 					children: children.to_i,
# 					decor: {a: "Modern",
# 									b: "Victorian",
# 									c: "Secret Lair",
#										},
#						color: color,
# 					material: material,
# 					child_proof: "Yes/No",
# }

p design


puts "Is this correct?Yes/No"
correct = gets.chomp.downcase

if correct == "yes"
	puts "Thank you for your input."
elsif correct == "no"
	category = gets.chomp
	case category
	when condition
		
	end