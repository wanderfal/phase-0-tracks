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
	attr_accessor :guess, :words, :letter_count, :guess_count, :placeholders, :arr, :solved

	def initialize(phrase)
	# When I call a new instance of the game I should provide an argument
	# Which is the word or phrase that Player 1 chooses
		# @phrase = gets.chomp.upcase
		# @letter_count = phrase.delete(' ').length
		@phrase = phrase
		@letter_count = phrase.delete(' ').length
		@placeholders = []
		@guess_count = 0
		@arr = []
	end
	

	def hide_words
		@solved = false
		@words = phrase.split(' ')
		words.each do |word|
			word.each_char do |x|
				@placeholders << "_"
			end
			@placeholders << " "
		end
		@placeholders.pop
		@placeholders.join(' ')
	end

	# Compare user's single character guess to the letters in the phrase
	# replacing them and updating the display.
	def letter_compare(guess)
		letters = phrase.split('')
		letters.each_with_index do |letter, i|
			if letter == guess
				@placeholders[i] = letter
			else
				next 
			end
		end
		p placeholders.join(' ')
	end

	def guess_attempt (guess)
		@guess = guess
		if guess == phrase
			@guess_count += 1
			@solved = true
		elsif arr.include?(guess)
			puts "You already tried this letter!"
			p placeholders.join(' ')
		elsif guess.length == 1
			@guess_count += 1
			@arr << guess
			letter_compare(guess)
		else
			@guess_count += 1
			@arr << guess
			p "Nope! Maybe try a single letter?"
			p placeholders.join(' ')
		end
		unless placeholders.include?('_')
			@solved = true
		end
	end

	def game_end
		case @solved
		when false
			p "Hah. You lose. Is that it?"
		when true
			p "You did it! You win!"
		end
	end

end


# DRIVER CODE

p "GAME START"
p "Player 1! GIVE ME A WORD OR A PHRASE CONTAINING ONLY LETTERS!"
game = Word_guess.new(gets.chomp.upcase)
p game.hide_words

until game.guess_count == game.letter_count || game.solved == true
	p "You have #{game.letter_count-game.guess_count} guesses!"
	p "Player 2! GUESS THE WORD/S OR LETTER!"
	game.guess_attempt(gets.chomp.upcase)
end

game.game_end



# One function that I could have included is when the phrase has 
# multiple words.
# Valid input could be a single correct word, which would update
# the feedback appropriately. Instead it only takes single letters
# and the complete phrase. 