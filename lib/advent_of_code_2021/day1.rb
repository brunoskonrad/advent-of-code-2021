# frozen_string_literal: true

module Day1
  class Entry
    def self.part_one(data)
      data.split("\n")
        .map { |mass| mass.strip.to_i }
        .map { |mass| Module.new(mass).fuel }
        .sum
    end

    def self.part_two(data)
      data.split("\n")
        .map { |mass| mass.strip.to_i }
        .map { |mass| RecursiveModule.new(mass).fuel }
        .sum
    end
  end

  class Module
    attr_reader :mass

    def initialize(mass)
      @mass = mass
    end

    def fuel
      (mass / 3).floor - 2
    end
  end

  class RecursiveModule
    attr_reader :mass

    def initialize(mass)
      @mass = mass
    end

    def fuel
      f = Module.new(mass).fuel
      total = f

      while f > 0
        f = Module.new(f).fuel
        total += f if f > 0
      end

      total
    end
  end
end
