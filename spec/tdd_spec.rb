require "rspec"
require "tdd"

describe "my_uniq" do
  it "remove duplicates from an array" do
    expect([1,2,1,3,3].my_uniq).to eq([1,2,3])

  end
end

describe "two_sum" do
  it "finds all pairs of positions where the elements at those positions sum to zero" do
    expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
  end
end

describe "my_transpose" do
  it "convert between the row-oriented and column-oriented representations of an array" do
    expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end
end


describe "stock_picker" do 
    subject(:stocks) { [4,10,2,5,200,1,15,10] } 
    it "takes an array of stock prices"  do 
        expect { stock_picker("str")}.to raise_error(ArgumentError)
    end 

    it "outputs the most profitable pairs of days" do
        expect(stock_picker(stocks)).to eq([2,4])
    end

    let(:stocks2) { [500,1,2] }
    it "should not sell stock before you buy it" do 
        expect(stock_picker(stocks2)).to eq([1,2])
    end 
end 

describe Game do
  subject(:game) { Game.new(3) } 
  describe "initialize" do
    it "makes a game board that has 1 pile of discs" do 
      expect(game.stacks[0].length).to eq(3)
    end

    it "makes a game board that has 1st empty pile" do
      expect(game.stacks[1].length).to eq(0)
    end

    it "makes a game board that has 2nd empty pile"do
      expect(game.stacks[2].length).to eq(0)
    end
  end

  describe "#move" do
    it "move the top disk from one pile to another" do
      expect(game.stacks[0].length).to eq(3)
      expect(game.stacks[1].length).to eq(0)
      game.move(0,1)
      expect(game.stacks[0].length).to eq(2)
      expect(game.stacks[1].length).to eq(1)
    end
    it "should stack disc according to size" do 
      game.move(0,1)
      expect { game.move(0,1)}.to raise_error("The disk you want to move is larger than the top disk")
    end 
  end

  describe "#won?" do
  
    it "should check the 2nd or 3rd pile and see if all the discs are placed on one pile" do
        expect(game.won?).to be false
        #game.stacks = [[],[],[3,2,1]]
        game.move(0,2)
        game.move(0,1)
        game.move(2,1)
        game.move(0,2)
        game.move(1,0) 
        game.move(1,2)
        game.move(0,2)
        expect(game.won?).to be true  
        
    end

    it "the finished pile should be in correct order of size" do
        expect(game.won?).to be false
        game.move(0,2)
        game.move(0,1)
        game.move(2,1)
        game.move(0,2)
        game.move(1,0)
        game.move(1,2)
        game.move(0,2)
        expect(game.won?).to be true
    end
  
  end


end
