# module Shout
# 	def self.yell_angrily(words)
# 		words + "!!!" + " :("
# 	end
# 	def self.yelling_happily(words)
# 		words + "!!" + " :)"
# 	end
# end

# p Shout.yell_angrily("Help, I have fallen and can't get up")

# p Shout.yelling_happily("Hello, the weather today is nice")


module Shout
	def yell_angrily(words)
		words + "!!!" + " :("
	end
	def yelling_happily(words)
		words + "!!" + " :)"
	end
end

class Senior
	include Shout
end

class Children
	include Shout
end

senior = Senior.new
p senior.yell_angrily('Get off my lawn')
p senior.yelling_happily('Get off my lawn')

child = Children.new
p child.yell_angrily('Hello mister')
p child.yelling_happily('Hello mister')
