require_relative "../puzzle_entry"
require_relative "part_one"
require_relative "submarine"
require_relative "captain"
require_relative "instructions"

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
      captain = Captain.new(submarine)

      planned_course.each { |instruction| captain.shouts(instruction) }

      submarine.total_depth
    end

    private

    def planned_course
      data.split("\n").map(&:strip).map { |instruction| Instruction.new(instruction) }
    end
  end
end
