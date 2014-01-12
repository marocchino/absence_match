require 'spec_helper'
describe Card do
  it { expect(Card.new(:black, :yello, :circle, 1)).to_not raise_error }
  it { expect(Card.new(:black, :yello, :circle, 1).bg).to eq(:black) }
  it { expect(Card.new(:black, :yello, :circle, 1).color).to eq(:yello) }
  it { expect(Card.new(:black, :yello, :circle, 1).shape).to eq(:circle) }
  it { expect(Card.new(:black, :yello, :circle, 1).location).to be(1) }
  it { expect(Card.all.size).to be(27) }
  it { expect(Card.table.size).to be(9) }
  it { expect(Card.table.first.location).to be(1) }
  it { expect(Card.table.last.location).to be(9) }
end
