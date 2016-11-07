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
	# if vowels.include? (char)
	# 	char.next
	# end
end

def encrypt(str)
	output = ""
	names = str.split(" ")
	swapped = (names[0], names[1] = names[1], names[0])
	last_name = swapped[0].split("")
	first_name = swapped[1].split("")
	last_name.map!{ |letter| next_char(letter) }
	first_name.map!{ |letter| next_char(letter) }
	output = last_name.join("") + " " + first_name.join("")
end



# p next_vowel('u')
# p next_vowel('o')



p encrypt("Kane Lee")
