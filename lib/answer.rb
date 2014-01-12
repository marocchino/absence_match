class Answer
  def initialize(*cards)
    @cards = cards
  end

  def match?
    [:bg, :color, :shape].all? {|attr| [1,3].include? @cards.map(&attr).uniq.size }
  end

  def used?
    defined?(@used) || @used = false
  end

  def location
    @cards.map(&:location).sort
  end
end
