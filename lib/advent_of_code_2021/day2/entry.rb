require_relative "../puzzle_entry"
require_relative "part_one"
require_relative "submarine"

module Day2
  class Entry < PuzzleEntry
    def part_one
      ocean = Ocean.new
      planned_course.each do |instruction|
        ocean.command(
          instruction.direction,
          instruction.value
        )
      end

      ocean.total
    end

    def part_two
      submarine = Submarine.new

      planned_course.each { |instruction| submarine.perform(instruction) }

      submarine.total
    end

    private

    def planned_course
      data.split("\n").map(&:strip).map { |instruction| Instruction.new(instruction) }
    end
  end
end
