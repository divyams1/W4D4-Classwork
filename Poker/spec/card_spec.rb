require "card"

describe Card do 
  subject(:d2) { Card.new(2, "diamond")}
  subject(:cQ) { Card.new("Q", "club")}
  describe "#initialize" do 
    it "should accept a value and a suit as arguments" do 
      expect { Card.new(2, "diamond")}.to_not raise_error          
    end 
    it "should set the value of the card" do
      expect(d2.value).to eq(2)
      expect(cQ.value).to eq(12)
    end
    it "should set the suit of the card" do 
      expect(d2.suit).to eq("diamond")
      expect(cQ.suit).to eq("club")
    end
    it "should set the name of the card" do 
        expect(d2.name).to eq("2 of diamond")
        expect(cQ.name).to eq("Q of club")
    end 
  end
end

