# frozen_string_literal: true

RSpec.describe Day2::Entry do
  subject { described_class.new(input) }

  let(:input) do
    <<~INPUT
      forward 5
      down 5
      forward 8
      up 3
      down 8
      forward 2
    INPUT
  end

  describe "#part_one" do
    it { expect(subject.part_one).to eq(150) }
  end

  describe "#part_one" do
    it { expect(subject.part_two).to eq(900) }
  end
end
