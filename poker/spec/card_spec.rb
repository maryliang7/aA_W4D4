require "card"
require "rspec"

describe Card do
  describe "#initialize" do
    it "should set a value and suit variable" do
      expect(Card.new('A','♣').value).to eq("A")
      expect(Card.new('A','♣').suit).to eq("♣")
    end
  end
end