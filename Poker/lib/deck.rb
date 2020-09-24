require "card"

class Deck
  attr_reader :cards
  def initialize
    @cards = Deck.populate
  end
  
  VALUES = [2,3,4,5,6,7,8,9,10,"J","Q","K","A"].freeze 
  SUITS = ["club", "heart", "spade", "diamond"].freeze 
  
  def self.populate
    arr = []
    SUITS.each do |suit| 
        VALUES.each do |value| 
          arr << Card.new(value, suit)
        end
    end
    arr.shuffle
  end 

end