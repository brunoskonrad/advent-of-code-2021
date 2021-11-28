# frozen_string_literal: true

require "spec_helper"

RSpec.describe Day1::Entry do
  it "#part_one" do
    fixture = <<-entry
      12
      14
      1969
      100756
    entry

    expect(described_class.part_one(fixture)).to eq(34_241)
  end

  it "#part_two" do
    fixture = <<-entry
      12
      14
      1969
      100756
    entry

    expect(described_class.part_two(fixture)).to eq(51_316)
  end
end

RSpec.describe Day1::Module do
  describe "#fuel" do
    context "when mass is 12" do
      subject { described_class.new(12) }

      it { expect(subject.fuel).to eq(2) }
    end

    context "when mass is 14" do
      subject { described_class.new(14) }

      it { expect(subject.fuel).to eq(2) }
    end

    context "when mass is 1969" do
      subject { described_class.new(1_969) }

      it { expect(subject.fuel).to eq(654) }
    end

    context "when mass is 100756" do
      subject { described_class.new(100_756) }

      it { expect(subject.fuel).to eq(33_583) }
    end
  end
end

RSpec.describe Day1::RecursiveModule do
  describe "#fuel" do
    context "when mass is 14" do
      subject { described_class.new(14) }

      it { expect(subject.fuel).to eq(2) }
    end

    context "when mass is 1969" do
      subject { described_class.new(1_969) }

      it { expect(subject.fuel).to eq(966) }
    end

    context "when mass is 100756" do
      subject { described_class.new(100_756) }

      it { expect(subject.fuel).to eq(50_346) }
    end
  end
end
