class Round
  def initialize
    @card_table = Card.table
    @answers = @card_table.combination(3).to_a.map{ |cards| Answer.new(cards) }.select(&:match?)
  end

  def absence?
    @answers.all?(&:used?)
  end

  def match?(location)
    answer = @answers.find { |a| a.location == location }
    if answer && !answer.used?
      answer.use
      true
    else
      false
    end
  end
end
