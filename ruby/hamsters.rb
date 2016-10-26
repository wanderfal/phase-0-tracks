puts "What is the hamster's name?"
	name = gets.chomp

puts "On a scale from 1 to 10, how loud is your hamster? 10 being the loudest"
	volume = gets.chomp.to_i

puts "What color is your hamster?"
	color = gets.chomp

puts "Is your hamster good or bad (for adoption)?"
	alignment = gets.chomp

puts "What is your hamster's estimated age in years?"
	age = nil
	age = gets.chomp
	if age == ""
		age = "unknown"
	end

puts "#{name} is at a volume level of #{volume} and is #{color} in color. It is also #{alignment} for adoption and #{age} years old."

