# AdventOfCode2021

This repository is my approach on solving the [Advent of Code, 2021](https://adventofcode.com/2021).

Disclaimer: the following document is meant to give an overview of how it works internally and as a reference for future me.

Installing dependencies:

```
bundle install
```

## Creating a new entry

Advent of Code work as follows: from the 1st of December until the 25th of December, a new puzzle is released. Each puzzle has two parts. Completing each part is worth a star.

In order for you to create a new entry, the following files are required:

- A new input text file should be created for each day. These files are located under `input` folder. This data can be found at the bottom of a puzzle page, on the Advent of Code website.
- Either a `day[number].rb` file or a `day[number]` folder with the classes required to solve the puzzle.
  - Either way, a `Day[number]::Entry` class should be created with two class methods: `#part_one` and `part_two`.

And one of the entries for, let's say day 2, would look like:


```ruby
require_relative "puzzle_entry"

module Day
  class Entry < PuzzleEntry
    def part_one
      data
    end

    def part_two
      data
    end
  end
end
```

Example, assuming day 1 and day 2:

```
/input
  day1.txt
  day2.txt
/lib
  /advent_of_code_2021
    day1.rb
    /day2
      entry.rb
      component.rb
```

## Running an entry

Running a specific day:

```
bin/advent_cli day [day] [part]
```

Where `day` is the day's challenge you want to run and `part` is what part of the challenge to run, 1 or 2. e.g:

```
bin/advent_cli day 1 2
```

This command will run day 1 part 2. Worth to mention that, on WSL, the result will be copied to the clipboard. It is also outputed on the terminal.
