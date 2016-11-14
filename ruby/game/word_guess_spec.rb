require_relative 'word_guess'

###### RSPEC TESTS

describe Word_guess do
	before (:each) do
		@game = Word_guess.new("Hello World")
	end
#	let(:game) {Word_guess.new("Hello World")}

	it "returns hidden words" do
		expect(@game.hide_words).to eq "_ _ _ _ _   _ _ _ _ _"
	end

	it "returns feedback for every letter" do

		expect(@game.letter_compare('l')).to eq "_ _ L L _   _ _ _ L _"
	end
end

