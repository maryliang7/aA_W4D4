require "code"
require 'rspec'
require 'active_support/inflector'

describe Array do
  describe "#my_uniq" do
    it "removes duplicates from an array" do
      expect([1, 2, 1, 3, 3].my_uniq).to eq([1,2,3])
    end
    it "returns an empty array when array is empty" do
      expect([].my_uniq).to eq([])
    end

  end

  describe "#two_sum" do
    it "finds all pairs of positions where the elements sum to zero" do
      expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
    end
  end

  describe "#my_transpose" do
    it "transposes the rows and columns" do
      expect([[1,2], [3,4], [5,6]].my_transpose).to eq([[1, 3, 5], [2, 4, 6]])
    end
    it "transposes cubic matrix" do
      rows = [
        [0, 1, 2],
        [3, 4, 5],
        [6, 7, 8]
      ]
      cols = [
        [0, 3, 6],
        [1, 4, 7],
        [2, 5, 8]
      ]
      expect(rows.my_transpose).to eq(cols)
    end
  end

  describe "#stock_picker" do
    it "takes an array of stock prices" do
      stock_prices = [432,56,789,543,64,6,44,3,1,733]
      expect(stock_prices.stock_picker).to eq([1,2])
    end
  end
end


describe Towers do
  let(:towers) { Towers.new}
  describe "#move" do
    it "should move an item from one array to another" do
      towers.move(0,1)
      expect(towers.arr[1]).to eq([1])
      expect(towers.arr[0]).to eq([5,4,3,2])
    end
  end
  describe "#won?" do
    it "should return false if game is not won" do
      expect(towers.won?).to be false
    end
    it "should return true when game is won" do
      towers.arr = [[], [5,4,3,2,1],[]]
      expect(towers.won?).to be true
      towers.arr = [[], [], [5,4,3,2,1]]
      expect(towers.won?).to be true
    end
  end
end