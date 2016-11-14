require_relative 'word_guess'

###### RSPEC TESTS

# I should have written each test before writing each function of my class

describe Word_guess do
	before (:each) do
		@game = Word_guess.new("HELLO WORLD")
	end
#	let(:game) {Word_guess.new("Hello World")}

	it "returns hidden words" do
		expect(@game.hide_words).to eq "_ _ _ _ _   _ _ _ _ _"
	end

	it "returns feedback for every letter" do
		@game.hide_words
		expect(@game.guess_attempt('L')).to eq "_ _ L L _   _ _ _ L _"
	end

	it "increases the guess count for each guess" do
		@game.hide_words
		@game.guess_attempt('H')
		expect(@game.guess_count).to eq 1
		@game.guess_attempt('Z')
		expect(@game.guess_count).to eq 2
	end

	it "does not increase the guess count for repeated guesses" do
		@game.hide_words
		@game.guess_attempt('H')
		expect(@game.guess_count).to eq 1
		@game.guess_attempt('H')
		expect(@game.guess_count).to eq 1
		@game.guess_attempt('Z')
		expect(@game.guess_count).to eq 2
		@game.guess_attempt('Z')
		expect(@game.guess_count).to eq 2
	end

	it "ends when user enters correct phrase" do
		@game.hide_words
		expect(@game.guess_attempt('HELLO WORLD')).to eq true
	end

end


