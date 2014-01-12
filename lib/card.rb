Card = Struct.new(:bg, :color, :shape, :location) do
  BGS = [:black, :gray, :white]
  COLORS = [:red, :yello, :blue]
  SHAPES = [:circle, :rect, :triangle]
  def self.all
    BGS.map do |bg|
      COLORS.map do |color|
        SHAPES.map do |shape|
          new(bg, color, shape, nil)
        end
      end
    end.flatten
  end

  def self.table
    i = 0
    all.sort_by { rand }[0, 9].each do |card|
      card.location = i += 1
    end
  end
end
