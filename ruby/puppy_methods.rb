class Puppy

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

block = Puppy.new




p block.fetch("toy")

p block.speak(4)

p block.roll_over

p block.dog_years(2)

p block.walked