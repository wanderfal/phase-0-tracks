#Kane Lee

puts "What is your name?"
name = gets.chomp.downcase

puts "How old are you? What year were you born?"
puts "Age?"
age = gets.chomp.to_i
puts "Year?"
year = gets.chomp.to_i

# puts "How old are you?"
# age = gets.chomp.to_i

# puts "What year were you born?"
# dob = gets.chomp.to_i

puts "Our company cafeteria serves garlic bread. Should we order some for you? yes/no"
order = gets.chomp.downcase

puts "Would you like to enroll in the company's health insurance? yes/no"
insurance = gets.chomp.downcase

employee = 0



vampire_meter = 0


if name == "drake cula"|| name == "tu fang"
	vampire_meter += 9000
end

if age != 2016-year
	"VAMPIRE!"
	vampire_meter += 1
end

if order == "no"
	"VAMPIRE!"
	vampire_meter += 1
end

if insurance == "no"
	"VAMPIRE!"
	vampire_meter += 1
end


puts case vampire_meter
when 3
	"Almost certainly a vampire."
when 2
	"Probably a vampire."
when 1
	"Probably not a vampire."
when 0
	"Results inconclusive."
else
	if vampire_meter > 4
		"Definitely a vampire."
	end
end

p vampire_meter
p name