require "deck"
require "rspec"

describe Deck do
  describe "#populate_deck" do
    it "should contain 52 cards" do
      deck = Deck.new
      expect(deck.deck.length).to eq(52)
    end
  end

  describe "#pop" do
    it "returns a random card" do
      deck = Deck.new
      expect(deck.draw.is_a?(Card)).to be true
    end
  end
  

end