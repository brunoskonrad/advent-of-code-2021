RSpec.describe Day1::Entry do
  it "part one returns amount of increased depth" do
    input = <<-INPUT
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

    expect(described_class.part_one(input)).to eq(7)
  end

  it "part two returns amount of increased depth by three-measurement sliding window" do
    input = <<-INPUT
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

    expect(described_class.part_two(input)).to eq(5)
  end
end
