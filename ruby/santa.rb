class Santa

	

	def initialize
		puts "Initializing Santa instance..."
	end

	def speak
		puts "Ho, ho, ho! Happy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie} cookie!"
	end

end


santa1 = Santa.new

p santa1.speak

p santa1.eat_milk_and_cookies('chocolate chip')