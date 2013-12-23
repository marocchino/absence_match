require 'spec_helper'
describe Card do
  it { expect(Card.new(:black, :yello, :circle, 1)).to_not raise_error }
  it { expect(Card.new(:black, :yello, :circle, 1).bg).to eq(:black) }
  it { expect(Card.new(:black, :yello, :circle, 1).color).to eq(:yello) }
  it { expect(Card.new(:black, :yello, :circle, 1).shape).to eq(:circle) }
  it { expect(Card.new(:black, :yello, :circle, 1).location).to be(1) }
end
