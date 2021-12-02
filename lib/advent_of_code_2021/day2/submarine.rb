module Day2
  class Instruction
    attr_reader :direction, :value

    def initialize(instruction)
      splitted_instruction = instruction.split

      @direction = splitted_instruction.first
      @value = splitted_instruction.last.to_i
    end
  end

  class Submarine
    def initialize
      @horizontal = 0
      @depth = 0
      @aim = 0
    end

    def total
      @horizontal * @depth
    end

    def perform(instruction)
      case instruction.direction
      when "forward"
        forward(instruction.value)
      when "up"
        up(instruction.value)
      when "down"
        down(instruction.value)
      end
    end

    private

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
