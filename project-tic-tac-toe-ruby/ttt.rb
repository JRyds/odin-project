# frozen_string_literal: true

class Board
  def initialize
    @board = [
      ["1", "2", "3"],
      ["4", "5", "6"],
      ["7", "8", "9"]
    ]
  end

  def display_board
    3.times do |row|
      3.times do |col|
        print @board[row][col]
        print "|" unless col == 2
      end
      puts "\n-----" unless row == 2
    end
  end

  def update_board(square)
    puts square.class
    case square
    when 1
      @board[0][0] = "X"
    end

    display_board
  end

end

class Player
  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

class Game

  def initialize
    super
  end
end