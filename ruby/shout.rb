module Shout
	def self.yell_angrily(words)
		words + "!!!" + " :("
	end
	def self.yelling_happily(words)
		words + "!!" + " :)"
	end
end

p Shout.yell_angrily("Help, I have fallen and can't get up")

p Shout.yelling_happily("Hello, the weather today is nice")