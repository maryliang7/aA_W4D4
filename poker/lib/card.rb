class Card
  attr_accessor :value, :suit

  VALUES = ['A', '2', '3', '4', '5', '6', '7', '8',
    '9', '10', 'J', 'Q', 'K']
  SUITS = ['♦', '♣', "♥", "♠"]
  
  def initialize(value, suit)
    @value = value
    @suit = suit
  end

  def self.values
    VALUES
  end

  def self.suits
    SUITS
  end
end
