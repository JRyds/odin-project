class Game
  COLORS = ['red', 'blue', 'green', 'yellow', 'purple', 'orange']
  attr_accessor :code

  def initialize
    @code = generate_code
    puts @code
  end

  def generate_code
    code = []
    4.times { code << COLORS.sample }
    code
  end

  def get_guess
    puts "Enter your guess (4 colors separated by spaces):"
    gets.chomp.split
  end

  def provide_feedback(guess)
    exact_matches = 0
    color_matches = 0

    code_copy = @code.dup
    guess.each_with_index do |color, index|
      if color == code_copy[index]
        exact_matches += 1
        code_copy[index] = nil
      end
    end

    guess.each do |color|
      if code_copy.include?(color)
        color_matches += 1
        code_copy[code_copy.index(color)] = nil
      end
    end

    puts "Exact matches: #{exact_matches}, color matches: #{color_matches}"

    exact_matches == 4
  end

  def play_as_guesser
    12.times do |i|
      puts "Turn #{i + 1}:"
      guess = get_guess
      win = provide_feedback(guess)
      if win
        puts "Congratulations, you win!"
        return
      end
    end
    puts "Sorry, you lost. The code was #{@code}."
  end

  def play_as_creator
    puts "Enter your code (4 colors separated by spaces):"
    @code = gets.chomp.split
    puts "You chose code: #{@code}"

    guessed_code = nil
    possible_colors = COLORS.dup
    possible_positions = [0, 1, 2, 3]

    12.times do |i|
      puts "Turn #{i + 1}:"
      if i == 0
        guessed_code = [COLORS.sample, COLORS.sample, COLORS.sample, COLORS.sample]
      else
        guessed_code = [possible_colors.sample, possible_colors.sample, possible_colors.sample, possible_colors.sample]
        guessed_code.each_with_index do |color, index|
          if possible_positions.include?(index)
            puts "Is #{color} in position #{index + 1}? (y/n)"
            answer = gets.chomp.downcase
            if answer == 'n'
              possible_colors.delete(color)
            else
              possible_positions.delete(index)
            end
          end
        end
      end

      win = provide_feedback(guessed_code)
      if win
        puts "Sorry, you lost. The code was #{@code}."
        return
      end
    end

    puts "Congratulations, you win!"
  end

  def play
    puts "Do you want to be the creator of the code? (y/n)"
    answer = gets.chomp.downcase
    if answer == 'y'
      play_as_creator
    else
      play_as_guesser
    end
  end

  def self.demo
    puts "Welcome to Mastermind!"
    puts "Guess the secret code in 12 turns or less."
    puts "The code consists of four colors chosen from #{COLORS.join(', ')}."
    puts "You can enter the colors as strings (e.g. 'red blue green yellow')."
    puts ""
    game = Game.new

    game.play
  end
end

Game.demo
