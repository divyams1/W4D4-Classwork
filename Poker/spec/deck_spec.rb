require "deck"

describe Deck do
  subject(:deck) { Deck.new }

  describe "#initialize" do
    it "should populate the cards" do
        expect(deck.cards.length).to eq(52) 
    end 
  end

  describe "#populate" do 
    it "should populate with 13 cards of each suit" do 
      deck = Deck.populate 
      clubs = deck.select { |card| card.suit == "club" }
      expect(clubs.length).to eq(13)
    end

    it "should only make 4 of each value of card" do
      deck = Deck.populate 
      two = deck.select { |card| card.value == 2 }
      expect(two.length).to eq(4)
    end 
  end

end
