#Kane Lee

puts "How many employees are being processed today?"
employee = gets.chomp.to_i


i = 0
while i < employee
	
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


	puts "Can you list your allergies one by one? If you have none then type done."

	allergy = ""
	while allergy != "sunshine"
		allergy = gets.chomp.downcase
		if allergy == "sunshine"
			break
		elsif allergy == "done"
			break
		else
			puts "Another one?"
		end
	end


	vampire_meter = 0
	if name == "drake cula"|| name == "tu fang"
		vampire_meter += 9001
	end

	if age != 2016-year
		"VAMPIRE!"
		vampire_meter += 2
	end

	if order == "no"
		"VAMPIRE!"
		vampire_meter += 1
	end

	if insurance == "no"
		"VAMPIRE!"
		vampire_meter += 1
	end
	
	
	report = case vampire_meter
		when 4
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
	
	i += 1
	if allergy == "sunshine"
		puts "Employee #{i} is Probably a vampire."
	else
		puts "Employee #{i} is #{report}"
	end
end

