# Class
# 2-Player Game
# Player 1 will provide the game with the word or phrase
#
# Player 2 will have a limited number of guesses based on the word's length
# Only unique guesses will count towards the limit
#
# After Player 1 provides the input, Player 2 will see placeholder
# characters indicating the amount of characters in the word. Like:
# "_ _ _ _ _".
#
# Player 2 is allowed single character guesses. If the characer is
# found in the word, then it will replace the placeholder. Aside from
# single character guesses, all other input must be exactly equal to
# the word or phrase.
#
# Once Player 2 runs out of guesses, the game will end and Player 2
# will recieve a taunting message.
# If Player 2 manages to guess the word within the limit, then they
# will get a congratulatory message.



# CLASS


class Word_guess
	attr_reader :phrase
	attr_accessor :guess, :words, :letter_count, :display
	
	def initialize(phrase)
	# When I call a new instance of the game I should provide an argument
	# Which is the word or phrase that Player 1 chooses
		# @phrase = gets.chomp.upcase
		# @letter_count = phrase.delete(' ').length
		@phrase = phrase
		@letter_count = phrase.delete(' ').length
		@display = []
	end
	
	# If there are multiple words I should display them so that each word
	# will be displayed on a new line
	def hide_words
		@words = phrase.split(' ')
		words.each do |word|
			word.each_char do |char|
				@display << "_"
			end
			@display << " "
		end
		p @display = display.join(' ').strip!
	end

	# Compare user's single character guess to the letters in the phrase
	# replacing them and updating the display.
	def letters_compare
		letters = phrase.squeeze(' ')
		placeholders = display.squeeze(' ')

	end


	def guess_attempt
		@guess = gets.chomp.upcase
		if guess.length == 1
			p 'hello'
		else
			p 'no'
		end
	end

	

end


# DRIVER CODE

p "GAME START"
p "Player 1! GIVE ME A WORD OR A PHRASE CONTAINING ONLY LETTERS!"
game = Word_guess.new(gets.chomp.upcase)

p "You have #{game.letter_count} guesses!"
p "GUESS THE WORD/S!"
game.hide_words
guess = game.guess_attempt