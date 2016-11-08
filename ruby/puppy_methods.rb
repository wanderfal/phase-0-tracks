class Puppy
	def initialize
		puts "Initializing new puppy instance..."
	end
  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end
  def speak(int)
  	int.times do
  		puts "Woof!"
  	end
  end
  def roll_over
  	return "*rolls over*"
  end
  def dog_years(int)
  	int*7
  end
  def walked
  	return "Has it been walked?"
  end
end


class Otter
	def initialize
		puts "Initializing new Otter instance..."
	end
	def swim(int)
		int.times do |x|
			return "It swam #{x+1} laps."
		end
	end
	def fish(int)
		return "It ate #{int} fish."
	end
end


test = Otter.new
p test.swim(4)
p test.fish(10)

# block = Puppy.new
# p block.fetch("toy")
# p block.speak(4)
# p block.roll_over
# p block.dog_years(2)
# p block.walked

arr = []

50.times do
	instance = Otter.new
	arr << instance
end

arr.each do |otter|
	p otter.swim(1)
	p otter.fish(2)
end

p arr



