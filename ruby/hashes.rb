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

puts "What kind of a Decor Theme would you like? A a modern theme, B a victorian theme, or C a secret lair?"

decor = {
					a: "Modern",
					b: "Victorian",
					c: "Secret Lair",
}

letter = gets.chomp.downcase.to_sym
design[:decor] = {letter => decor[letter] } 
# p letter
# p decor
# p decor[letter]

puts "What is your favorite color?"
design[:color] = gets.chomp

puts "What type of material would you like?"
design[:material] = gets.chomp

puts "Would you like to child-proof your furniture?Yes/No"
design[:child_proof] = gets.chomp.capitalize


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
puts <<PARAGRAPH
			"Your name is #{design[:name]} and you are #{design[:age]} years old.
			You have #{design[:children]} children, and you said #{design[:child_proof]} to our child-proofing
			protection package.
			You would like the #{design[:decor][letter]} decor theme, with #{design[:material]}
			material, and in the color #{design[:color]}."
PARAGRAPH

puts "Is this correct?Yes/No"
correct = gets.chomp.downcase

if correct == "yes"
	puts "Thank you for your input."
elsif correct == "no"
# This will only run once, meaning it won't allow the user
# to make changes to multiple categories
# One way to make this loop is, until the user types in 
# 'done', this question will keep being asked
	puts "Which category would you like you change?"
	category = gets.chomp.downcase
	case category
	when "name"
		puts "What would you like to change it to?"
		design[:name] = gets.chomp
	when "age"
		puts "What would you like to change it to?"
		design[:age] = gets.chomp.to_i
	when "children"
		puts "What would you like to change it to?"
		design[:children] = gets.chomp.to_i
	when "decor"
		puts "What would you like to change it to? A, B, or C"
		letter = gets.chomp.downcase.to_sym
		design[:decor] = {letter => decor[letter] }
	when "color"
		puts "What would you like to change it to?"
		design[:color] = gets.chomp
	when "material"
		puts "What would you like to change it to?"
		design[:material] = gets.chomp
	when "child_proof"	
		puts "What would you like to change it to?"
		design[:child_proof] = gets.chomp.capitalize
	else
		puts "I have no idea what you are talking about."
	end
end


p design