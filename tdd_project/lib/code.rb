class Array
  def my_uniq
    array = []
    self.each { |ele| array << ele if !array.include?(ele) }
    array
  end

  def two_sum
    result = []
    (0...self.length).each do |i|
      (i+1...self.length).each do |j|
        sum = self[i] + self[j]
        if sum == 0
          result << [i,j]
        end
      end
    end
    result
  end

  def my_transpose
    arr = self.dup
    arr.each_with_index do |rows,i|
      rows.each_with_index do |ele,j|
        arr[i][j], arr[j][i] = arr[j][i], arr[i][j]
      end
    end
    arr

  end
end

class Towers
  attr_accessor :arr
  def initialize
    @arr = [[5,4,3,2,1],[],[]]
  end

  def move(move_from, move_to)
    current = @arr[move_from].pop
    if !current.nil? && ( @arr[move_to].last.nil? || @arr[move_to].last > current)
      @arr[move_to] << current
    end
  end

  def won?

  end
    
end