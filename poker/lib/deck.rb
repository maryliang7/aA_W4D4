require_relative "card.rb"

class Deck
  attr_accessor :deck
  def initialize
    populate_deck
  end

  def populate_deck
    @deck = []
    suits = Card.suits
    values = Card.values

    suits.each do |suit|
      values.each do |value|
        @deck << Card.new(value, suit)
      end
    end
    @deck.shuffle!
  end

  def draw
    @deck.pop
  end

end