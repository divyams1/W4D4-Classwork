require "card"
require "byebug"
class Hand 
    attr_accessor :cards
    def initialize(*cards)
        @cards = cards
    end 

    def pair?
        debugger
        cards.select { |card| cards.count(card.value) == 2}  
    end 

end

# maybe actual card instances are needed