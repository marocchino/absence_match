class Answer
  def initialize(*cards)
    @cards = cards.sort_by(&:location)
  end

  def match?
    [:bg, :color, :shape].all? {|attr| [1,3].include? @cards.map(&attr).uniq.size }
  end

  def used?
    @use
  end

  def use
    @use = true
  end

  def location
    @cards.map(&:location)
  end
end
