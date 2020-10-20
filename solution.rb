class Deck
  attr_reader :cards

  def initialize
    @cards = []
    ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"].each { |rank|
      ["Hearts", "Clubs", "Diamonds", "Spades"].each { |suit|
        @cards << Card.new(suit, rank)
      }
    }
  end

  def choose_card
    self.cards.delete_at(rand(self.cards.length))
  end
end

class Card
  attr_reader :rank, :suit

  def initialize(suit, rank)
    @rank = rank
    @suit = suit
  end
end
