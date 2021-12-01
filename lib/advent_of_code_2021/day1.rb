module Day1
  class Entry
    class << self
      def part_one(data)
        CalculateDepthIncrease.perform(sonnar_data(data))
      end

      def part_two(data)
        new_data = ThreeMeasurementSlidingWindow.perform(sonnar_data(data))

        CalculateDepthIncrease.perform(new_data)
      end

      private

      def sonnar_data(data)
        data.split("\n").map(&:strip).map(&:to_i)
      end
    end
  end

  class CalculateDepthIncrease
    def self.perform(data)
      total = 0

      data.each_with_index do |measurement, index|
        next if data[index - 1].nil?

        total += 1 if data[index - 1] < measurement
      end

      total
    end
  end

  class ThreeMeasurementSlidingWindow
    def self.perform(data)
      data.each_with_index
        .map do |depth, index|
          if index >= data.length - 2
            nil
          else
            [depth, data[index + 1], data[index + 2]]
          end
        end
        .reject(&:nil?)
        .map(&:sum)
    end
  end
end
