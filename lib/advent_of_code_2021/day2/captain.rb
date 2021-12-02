module Day2
  class Captain
    def initialize(submarine)
      @submarine = submarine
    end

    def shouts(instruction)
      case instruction.direction
      when "forward"
        @submarine.forward(instruction.value)
      when "up"
        @submarine.up(instruction.value)
      when "down"
        @submarine.down(instruction.value)
      end
    end
  end
end
