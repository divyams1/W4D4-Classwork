require "hand"

describe Hand do
  let(:card_1) { double("card_1", value: 10)}
  let(:card_2) { double("card_2", value: 10)}
  let(:card_3) { double("card_3", value: 9)}
  let(:card_4) { double("card_4", value: 8)}
  let(:card_5) { double("card_5", value: 7)}
  subject(:hand) { Hand.new(card_1, card_2, card_3, card_4, card_5)}
  describe "#initialize" do
    it "should take 5 cards from the deck and store it" do
      expect(hand.cards.length).to eq(5)
    end
  end


  describe "#pair?" do
    it "should return true if the hand contians a pair" do
      expect(hand.pair?).to be(true)
    end
  end
end