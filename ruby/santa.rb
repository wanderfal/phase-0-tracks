class Santa
	attr_reader :age, :ethnicity
	attr_accessor :gender, :reindeer_ranking
# Getter
	# def age
	# 	@age
	# end

	# def ethnicity
	# 	@ethnicity
	# end

	# def reindeer_ranking
	# 	@reindeer_ranking
	# end

	# def gender
	# 	@gender
	# end

# Setter


	# def gender=(new_gender)
	# 	@gender = new_gender
	# end

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance..."
		@gender = gender
		@ethnicity = ethnicity
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

	def celebrate_birthday
		@age += 1
	end

	def get_mad_at(r_name)
		@reindeer_ranking << @reindeer_ranking.delete(r_name)
	end
end


# santa1 = Santa.new('one', 'two')

# p santa1.speak

# p santa1.eat_milk_and_cookies('chocolate chip')

santas = []

genders = ['male', 'female', 'other']
# p genders.sample
ethnicities = ['white', 'black', 'orange', 'yellow', 'pink', 'green']


# ethnicities.each do |ethnicity|
# 	santas << Santa.new(genders.sample, ethnicity)
# end
# Sample may not be the best method when testing...
p santa2 = Santa.new(genders.sample, ethnicities.sample)
puts "This Santa was #{santa2.age} years old, but today is their birthday. So now this Santa is #{santa2.celebrate_birthday} years old!"
puts "This Santa was a #{santa2.gender}."
santa2.gender = 'supergender?'
puts "After an accident, this Santa became a #{santa2.gender}!"
p santa2.reindeer_ranking
santa2.get_mad_at('Dancer')
puts "Dancer cut in line, so they were sent to the back."
p santa2.reindeer_ranking
puts "This Santa is of #{santa2.ethnicity} ethnicity!"
