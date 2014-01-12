require 'spec_helper'
describe Answer do
  let(:set) { Answer.new(one, two, three) }
  context "all same" do
    let(:one) { Card.new(:black, :yello, :circle, 1) }
    let(:two) { Card.new(:black, :yello, :circle, 2) }
    let(:three) { Card.new(:black, :yello, :circle, 3) }
    it { expect(set.match?).to be_true }
    it { expect(set.location).to eq([1, 2, 3]) }
    it { expect(set.used?).to be_false }
    it { set.used?;expect(set.used?).to be_true }
  end

  context "all diff bg, all same color, all same shape" do
    let(:one) { Card.new(:black, :yello, :circle, 4) }
    let(:two) { Card.new(:gray, :yello, :circle, 2) }
    let(:three) { Card.new(:white, :yello, :circle, 3) }
    it { expect(set.match?).to be_true }
    it { expect(set.location).to eq([2, 3, 4]) }
  end

  context "all same bg, all diff color, all same shape" do
    let(:one) { Card.new(:black, :yello, :circle, 1) }
    let(:two) { Card.new(:black, :red, :circle, 2) }
    let(:three) { Card.new(:black, :blue, :circle, 3) }
    it { expect(set.match?).to be_true }
    it { expect(set.location).to eq([1, 2, 3]) }
  end

  context "all same bg, all same color, all diff shape" do
    let(:one) { Card.new(:black, :yello, :circle, 2) }
    let(:two) { Card.new(:black, :yello, :rect, 1) }
    let(:three) { Card.new(:black, :yello, :triangle, 3) }
    it { expect(set.match?).to be_true }
    it { expect(set.location).to eq([1, 2, 3]) }
  end

  context "1 diff 2 same gb" do
    let(:one) { Card.new(:black, :yello, :circle, 3) }
    let(:two) { Card.new(:white, :yello, :circle, 2) }
    let(:three) { Card.new(:black, :yello, :circle, 1) }
    it { expect(set.match?).to be_false }
    it { expect(set.location).to eq([1, 2, 3]) }
  end
end
