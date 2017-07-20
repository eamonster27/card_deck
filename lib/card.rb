class Card
  attr_reader :rank, :suit, :value, :suit_value

  def initialize(rank, suit)
    case rank
    when :A
      @value = 1
    when :K
      @value = 13
    when :Q
      @value = 12
    when :J
      @value = 11
    else
      @value = rank.to_i
    end

    case suit
    when :hearts
      @suit_value = 4
    when :diamonds
      @suit_value = 3
    when :clubs
      @suit_value = 2
    when :spades
      @suit_value = 1
    end
    @rank = rank
    @suit = suit
  end

  def greater_than?(card)
    greater_than = false
    if(@value > card.value)
      greater_than = true
    elsif(@value == card.value)
      if(@suit_value > card.suit_value)
        greater_than = true
      end
    end
    greater_than
  end

  def ==(other)
    @rank == other.rank && @suit == other.suit
  end
end
