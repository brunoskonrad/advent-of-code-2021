# frozen_string_literal: true

require_relative "puzzle_entry"

module Day1
  class Entry < PuzzleEntry
    def part_one
      CalculateDepthIncrease.perform(sonar_data)
    end

    def part_two
      three_measurements_data = ThreeMeasurementSlidingWindow.perform(sonar_data)
      CalculateDepthIncrease.perform(three_measurements_data)
    end

    private

    def sonar_data
      @sonar_data ||= data.split("\n").map(&:strip).map(&:to_i)
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
