# Release 0
# We first take the given name and swap the positions
# of the First name, and last name.
#
# We then go through each character in the order that
# they are given. If they are a vowel('a','e','i','o','u')
# then that vowel is changed to the next vowel. In the case
# that the vowel is 'u', then it will change to 'a'.
# 
# If the character is not a vowel, then it will change to the
# next character in the order of the alphabet, unless the next
# character is a vowel. In that case it will skip to the next
# character





def next_vowel(vowel)

##Remember that 'a' is not the same as 'A'
	vowels = ['a','e','i','o','u']
	i = vowels.index (vowel)
	if vowel == 'u'
		vowel = 'a'
	else
		vowel = vowels[i+1]
	end
end

def next_char(char)
	vowels = ['a','e','i','o','u']
	if vowels.include? (char)
		next_vowel(char)
	elsif char == 'z'
		char = 'a'
	else
		if vowels.include? (char.next)
			char.next.next
		else
			char.next
		end
	end
end

def encrypt(str)
	output = ""
	names = str.downcase.split(" ")
	swapped = (names[0], names[1] = names[1], names[0])
	last_name = swapped[0].split("")
	first_name = swapped[1].split("")
	last_name.map!{ |letter| next_char(letter) }
	first_name.map!{ |letter| next_char(letter) }
	output = last_name.join("").capitalize + " " + first_name.join("").capitalize
	output
end



# p next_vowel('u')
# p next_vowel('o')

# p next_char('d')
# p next_char('n')

# p encrypt("Kane Lee")

# Release 1
def cap_first(str)
	str.split(' ').map!{ |word| word.capitalize }.join(' ')
end

# p cap_first('kane lee')


fake_names = {}
name = "Name Here"
loop do
	puts "Please enter a first name and last name in that order. Type 'quit' to end."
	name = cap_first(gets.chomp.downcase)
	if name.empty? || name == 'Quit'
		break
	else
		fake_names[name] = encrypt(name)
	end
end

if fake_names.empty?
	puts "You did not enter any information. You have no name. Goodbye."
else
	fake_names.each do |name, fake_name|
		puts "Thank you #{fake_name}, formerly known as #{name}."
	end
end

