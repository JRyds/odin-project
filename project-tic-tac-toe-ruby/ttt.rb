# frozen_string_literal: true

class Board
  # - Define a Board class that represents the Tic Tac Toe board.
  # - This class should have a 2D array to store the state of the board,
  # and methods to display the board, update the board with a player's move,
  # and check if the game has been won or tied.

  attr_accessor :board

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

  def update_board(player, square_choice)
    marker = player.marker

    case square_choice
    when 1
      @board[0][0] = marker
    when 2
      @board[0][1] = marker
    when 3
      @board[0][2] = marker
    when 4
      @board[1][0] = marker
    when 5
      @board[1][1] = marker
    when 6
      @board[1][2] = marker
    when 7
      @board[2][0] = marker
    when 8
      @board[2][1] = marker
    when 9
      @board[2][2] = marker
    end
  end

  def won?(player)
    marker = player.marker

    # Check for horizontal wins
    3.times do |row|
      if @board[row][0] == marker && @board[row][1] == marker && @board[row][2] == marker
        return true
      end
    end

    # Check for vertical wins
    3.times do |col|
      if @board[0][col] == marker && @board[1][col] == marker && @board[2][col] == marker
        return true
      end
    end

    # Check for diagonal wins
    if @board[0][0] == marker && @board[1][1] == marker && @board[2][2] == marker
      return true
    elsif @board[0][2] == marker && @board[1][1] == marker && @board[2][0] == marker
      return true
    end

    return false
  end

  def tied?
    3.times do |row|
      3.times do |col|
        if @board[row][col] != "X" && @board[row][col] != "O"
          # If there is an unoccupied square, the game is not tied
          return false
        end
      end
    end
    return true
  end
end

class Player
  # - Define a Player class that represents a player in the game.
  # - This class should have a name and a marker (e.g. "X" or "O").

  attr_accessor :name, :marker
  def initialize(player)
    @name = player[0]
    @marker = player[1]
  end
end

class Game
  # Define a Game class that represents the Tic Tac Toe game.
  # This class should have two instances of the Player class, an instance of the Board class,
  # and a current player (i.e. the player whose turn it is).
  attr_accessor :player1, :player2, :current_player
  def initialize
    puts "Enter P1 Name and 'O' or 'X':"
    p1 = gets.chomp.split(' ')
    @player1 = Player.new(p1)

    puts "Enter P2 Name and 'O' or 'X':"
    p2 = gets.chomp.split(' ')
    @player2 = Player.new(p2)

    @board = Board.new

    @current_player = @player1

  end
  def game_loop
    # puts "#{p1}, enter number to choose square:"
    # @board.update_board(gets.chomp.to_i)
    #
    # Implement a loop in the Game class that runs until the game is won or tied.
    # In each iteration of the loop, display the current state of the board,
    # prompt the current player to enter their move, update the board with the player's move,
    # and check if the game has been won or tied. If the game has been won or tied, exit the loop.

    # Once the game is over, display the final state of the board and the result of the game
    # (i.e. which player won or if it was a tie).

    game_over = false


    until game_over do # Implement a loop in the Game class that runs until the game is won or tied.
      puts "++++++++++++++++"
      @board.display_board # In each iteration of the loop, display the current state of the board,
      puts
      puts "++++++++++++++++"

      puts "#{current_player.name}, enter number to choose square:"
      choice = gets.chomp.to_i
      @board.update_board(@current_player, choice) # prompt the current player to enter their move, update the board with the player's move,

      # check if the game is won or tied
      if @board.won?(@current_player)
        puts "#{@current_player.name} wins!"
        break
      elsif @board.tied?
        puts "Game over, it's a tie."
        break
      end
      @current_player = (@current_player == @player1) ? @player2 : @player1
    end


  end
end

game = Game.new
game.game_loop


