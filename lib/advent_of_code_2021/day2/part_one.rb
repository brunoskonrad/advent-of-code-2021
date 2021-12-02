module Day2
  class Ocean
    def initialize
      @horizontal = 0
      @depth = 0
    end

    def total
      @horizontal * @depth
    end

    def command(type, value)
      case type
      when "forward"
        @horizontal += value
      when "down"
        @depth += value
      when "up"
        @depth -= value
      end
    end
  end
end
