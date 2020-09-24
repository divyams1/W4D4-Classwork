class Array
  def my_uniq
    new_arr = []
    self.each do |ele|
      new_arr << ele unless new_arr.include?(ele)
    end
    new_arr
  end

  def two_sum
    pairs = []
    (0...self.length).each do |i|
      (i...self.length).each do |j|
        pairs << [i, j] if self[i] + self[j] == 0 && self[i] != self[j]
      end    
    end
    pairs
  end

end

def my_transpose(arr)
  transposed = []
  arr.length.times do |i|
    sub_arr = []
    arr.each do |ele|
      sub_arr << ele[i]
    end
    transposed << sub_arr
  end
  transposed
end

def stock_picker(stocks) 
  raise ArgumentError unless stocks.is_a?(Array)
  max_diff = 0 
  pair = []
  stocks.each_with_index do |buy, i|
    stocks.each_with_index do |sell,j| 
      if sell-buy > max_diff && j > i 
          max_diff = sell - buy
          pair = [i,j]
       end 
      end 
    end 
    return pair
end

class Game
  attr_writer :stacks
  attr_reader :stacks, :length
  def initialize(n)
    arr = []
    (1..n).each { |ele| arr << ele}
    @stacks = [arr.reverse, [], []]
    @length = n
    @original_stack = arr.reverse
  end

  def move(a,b) 
    if stacks[a].length > 0 && stacks[b].length > 0
      raise "The disk you want to move is larger than the top disk" if stacks[a].last > stacks[b].last
    end 
    stacks[b] << stacks[a].pop          
  end 

  def won?
    stacks[0] == [] && (stacks[1] == @original_stack || stacks[2] == @original_stack)
  end

end