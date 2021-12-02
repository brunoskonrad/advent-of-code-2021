module Day2
  class Instruction
    attr_reader :direction, :value

    def initialize(instruction)
      splitted_instruction = instruction.split

      @direction = splitted_instruction.first
      @value = splitted_instruction.last.to_i
    end
  end
end
