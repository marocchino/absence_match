class Answer
  def initialize(*answers)
    @answers = answers
  end

  def match?
    [:bg, :color, :shape].all? {|attr| [1,3].include? @answers.map(&attr).uniq.size }
  end

  def location
    @answers.map(&:location).sort
  end
end
