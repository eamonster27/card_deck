require_relative "card"

class Deck
  def initialize
    @cards = []
    [:clubs, :diamonds, :hearts, :spades].each do |suit|
      [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K].each do |rank|
        @cards << Card.new(rank, suit)
      end
    end
  end

  def cards_left
    @cards.length
  end

  def shuffle
    @cards.shuffle
  end

  def draw
    @cards.shift
  end
end
