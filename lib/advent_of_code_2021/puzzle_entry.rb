# frozen_string_literal: true

class PuzzleEntry
  attr_reader :data

  class InvalidPartError < StandardError; end

  def initialize(data)
    @data = data
  end

  def perform(part)
    case part
    when 1
      part_one
    when 2
      part_two
    else
      raise InvalidPartError
    end
  end

  private

  def part_one
    raise NotImplementedError
  end

  def part_two
    raise NotImplementedError
  end
end
