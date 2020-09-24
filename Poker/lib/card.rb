class Card
  attr_reader :value, :suit, :name
  attr_writer :suit

  VALUES = {
    "A" => 14, 
    "K" => 13, 
    "Q" => 12,
    "J" => 11,
    2 => 2,
    3 => 3,
    4 => 4,
    5 => 5,
    6 => 6,
    7 => 7,
    8 => 8,
    8 => 9,
    10 => 10,
  } 

  def initialize(value, suit)
    @value = VALUES[value]
    @suit = suit
    @name = "#{value} of #{suit}"
  end
end

