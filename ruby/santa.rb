class Santa

	

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		p @gender = gender
		p @ethnicity = ethnicity
		@reindeer_ranking = [
			'Rudolph',
			'Dasher',
			'Dancer',
			'Prancer',
			'Vixen',
			'Comet',
			'Cupid',
			'Donner',
			'Blitzen'
		]
		@age = 0
	end

	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

end


# santa1 = Santa.new('one', 'two')

# p santa1.speak

# p santa1.eat_milk_and_cookies('chocolate chip')

santas = []

genders = ['male', 'female', 'other']
# p genders.sample
ethnicities = ['white', 'black', 'orange', 'yellow', 'pink', 'green']


ethnicities.each do |ethnicity|
	santas << Santa.new(genders.sample, ethnicity)
end

