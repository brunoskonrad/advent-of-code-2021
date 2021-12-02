module Day2
  class Submarine
    def initialize
      @horizontal = 0
      @depth = 0
      @aim = 0
    end

    def total_depth
      @horizontal * @depth
    end

    def forward(value)
      @horizontal += value
      @depth += @aim * value
    end

    def up(value)
      @aim -= value
    end

    def down(value)
      @aim += value
    end
  end
end
