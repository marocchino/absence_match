class Answer
  def initialize(*cards)
    @cards = cards.sort_by(&:location)
  end

  def match?
    [:bg, :color, :shape].all? {|attr| [1,3].include? @cards.map(&attr).uniq.size }
  end

  def used?
    @user
  end

  def match_by?(user)
    @user = user
    match?
  end

  def location
    @cards.map(&:location).sort
  end
end
