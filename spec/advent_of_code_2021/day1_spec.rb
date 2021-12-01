# frozen_string_literal: true

RSpec.describe Day1::Entry do
  subject { described_class.new(input) }

  let(:input) do
    <<~INPUT
      199
      200
      208
      210
      200
      207
      240
      269
      260
      263
    INPUT
  end

  describe "#part_one" do
    it { expect(subject.part_one).to eq(7) }
  end

  describe "#part_two" do
    it { expect(subject.part_two).to eq(5) }
  end
end
